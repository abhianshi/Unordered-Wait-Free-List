//============================================================================
// Name        : LockFreeList.cpp
// Author      : Abhianshu Singla
// Version     :
// Copyright   :
// Description :
//============================================================================

#include <iostream>
#include <atomic>
#include <thread>
#include <cstdlib>  // for rand/srand
#include <ctime>   // for time
#include <mutex>
#include <map>

using namespace std;
#define THREADS 1
int elements=256;

int* INS (new int(0));
int* REM (new int(1));
int* DAT (new int(2));
int* INV (new int(3));
mutex mtx;
map<thread::id, int> id_map;


struct Node{
	int key; //integer data field
	atomic<int*> state; //INS, REM, DAT, or INV
	Node* next; //pointer to the successor
	atomic<Node*> prev; //pointer to the predecessor
	int tid; //thread id of the creater

	Node(const int key, int* state, Node* next, Node* prev, const int tid) : key(key), state(state), next(next), prev(prev), tid(tid) {}
};

Node* p_null = (Node*) NULL;

struct Desc{
  int phase; //integer phase number
  bool pending; //whether operation is pending
  Node* node;//pointer to the enqueueing node

  Desc() : phase(-1), pending(false), node(p_null){}
  Desc(const int phase, const bool pending, Node* node) : phase(phase), pending(pending), node(node){}
};

//Global Variable
atomic<Node*> head; //initially null
Node* dummy;
atomic<int> counter;
atomic<Desc*> status[THREADS];
atomic<int> t_counter;



void __init__(){
  head = new Node(-1, REM, p_null, p_null, -1);
  dummy = new Node(-2147483647,INV, p_null, p_null,-1);
  counter = 0;
	t_counter = -1;
	for(int tid = 0; tid < THREADS ; tid++){
		status[tid] = new Desc(-1, false, p_null);
	}
}


bool isPending(int tid, int phase){
  Desc* d  = status[tid];
  return d->pending && (d->phase <= phase);
}

void helpFinish(){
  Node* curr = head;
  Node* pred = curr->prev;
  if(pred != p_null && pred != dummy){
    int tid = pred->tid;
    Desc* d = status[tid];
    if(curr == head && pred == d->node){
      Desc* d_ = new Desc(d->phase,false,d->node);
      atomic_compare_exchange_strong(&status[tid], &d, d_);
			delete d;
      pred->next = curr;
      atomic_compare_exchange_strong(&head,&curr,pred);
      curr->prev = dummy;
    }
  }
}

void helpEnlist(int tid, int phase){

  while(isPending(tid,phase)){
    Node* curr = head;
    Node* pred = curr->prev;
    if(curr == head){
      if(pred == p_null){
        if(isPending(tid,phase)){
					Desc* temp = status[tid];
					Node* n = temp->node;
          // Node* n = status[tid]->node;
					// cout << &p_null << n << endl;
          if(atomic_compare_exchange_strong(&curr->prev, &p_null, n)){
            helpFinish();
            return;
          }
        }
      }else{
        helpFinish();
      }
    }
  }
}



void enlist(Node* h){
  int threadid = id_map[this_thread::get_id()];
  int phase = atomic_fetch_add(&counter, 1);
  status[threadid] = new Desc(phase, true, h);
  for(int tid = 0; tid < THREADS ; tid++){
    helpEnlist(tid,phase);
  }
  helpFinish();
}



bool helpInsert(Node* h, int k){
	Node* pred = h;
	Node* curr = pred->next;
	while(curr != p_null){
		int* s = curr->state;
		if(s == INV){
			Node* succ = curr->next;
			pred->next = succ;
			curr = succ;
		}else if(curr->key != k){
			pred = curr;
			curr = curr->next;
		}else if(s == REM){
			return true;
		}else if(s == INS || s == DAT){
			return false;
		}
	}
	return true;
}


bool helpRemove(Node* h, int k){
	Node* pred = h;
	Node* curr = pred->next;
	while(curr != p_null){
		int* s = curr->state;
		if(s == INV){
			Node* succ = curr->next;
			pred->next = succ;
			curr = succ;
		}else if(curr->key != k){
			pred = curr;
			curr = curr->next;
		}else if(s == REM){
			return false;
		}else if(s == INS){
			if(atomic_compare_exchange_strong(&curr->state, &INS, REM)){
				return true;
			}
		}else if(s == DAT){
			curr->state = INV;
			return true;
		}
	}
	return false;
}


void print(){
		Node* curr = head;
		while(curr != p_null){
			cout << "Key" << curr->key << "State" << *(curr->state) << endl;
			curr = curr->next;
		}
}

bool insert(int k){
	int threadid = id_map[this_thread::get_id()];
	Node* h = new Node(k, INS, p_null, p_null, threadid);

	enlist(h);
	// cout << threadid <<" Enlist " << k <<endl;
	bool b = helpInsert(h,k);
	// cout << threadid <<" helpRemove " << k <<endl;
	if(!atomic_compare_exchange_strong(&h->state, &INS, (b ? DAT : INV))){
		helpRemove(h,k);
		// cout << threadid <<" helpRemove " << k <<endl;
		h->state = INV;
	}
	// cout << threadid <<" Insert " << k <<endl;
	return b;
}

bool remove(int k){
	int threadid = id_map[this_thread::get_id()];
	Node* h = new Node(k, REM, p_null, p_null, threadid);

	enlist(h);
	bool b = helpRemove(h,k);
	h->state = INV;
	return b;
}

bool contains(int k){
	Node* curr;
	curr = head;
	while(curr != p_null){
		if(curr->key == k){
			int* s = curr->state;
			if(s != INV){
				return (s == INS) | (s == DAT);
			}
		}
		curr = curr->next;
	}
	return false;
}

void perm(int n_transactions, int n_insert, int n_contains, int n_remove) {
	int num;
	for(int i = 0 ;i < n_transactions/THREADS ;i++){
		for(int j = 0 ;j < n_insert ;j++){
			num = (rand() % elements) + 1;
			insert(num);
		}
		for(int j = 0 ;j < n_contains ;j++){
			num = (rand() % elements) + 1;
			contains(num);
		}
		for(int j = 0 ;j < n_remove ;j++){
			num = (rand() % elements) + 1;
			remove(num);
		}
	}
}

void initialize(){
	for(int i = 0 ;i < elements ;i=i+2){
		insert(elements);
	}
}

void operations1(){
	perm(500000, 1,1,1);
}
void operations2(){
	perm(500000, 2,2,2);
}
void operations3(){
	perm(500000, 4,4,4);
}
void operations4(){
	perm(50000, 9,90,1);
}
void operations5(){
	perm(500000, 25,30,25);
}
void operations6(){
	// perm(500000, 33,34,33);
}
void operations7(){
	perm(10000, 9,90,1);
}
void operations8(){
	perm(10000, 20,75,5);
}
void operations9(){
	perm(10000, 30,60,10);
}


int main() {
	__init__();
	auto start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	thread th[16];

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations1);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	auto finish = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations2);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations3);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations4);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations5);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations6);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations7);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations8);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< THREADS; i++){
		th[i] = thread(operations9);
		id_map[th[i].get_id()] = i;
	}
	for(int i = 0 ; i< THREADS; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	return 0;
}
