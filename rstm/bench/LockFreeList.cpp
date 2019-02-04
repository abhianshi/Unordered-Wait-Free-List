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
#include <time.h>

using namespace std;


int* INS (new int(0));
int* REM (new int(1));
int* DAT (new int(2));
int* INV (new int(3));
int elements = 256;
int n_threads = 8;

struct Node{
	int key; //integer data field
	atomic<int*> state; //INS, REM, DAT, or INV
	Node* next; //pointer to the successor

	Node(const int key, int* state, Node* next) : key(key), state(state), next(next) {}
};

//Global Variable
atomic<Node*> head; //initially null

void enlist(Node* h){
	Node* old;
	while(true){
		// old = head.load(memory_order_relaxed);
		old = head;
		h->next = old;
		if(atomic_compare_exchange_strong(&head, &old, h)){
			return;
		}
	}
}


bool helpInsert(Node* h, int k){
	Node* pred = h;
	Node* curr = pred->next;
	while(curr != NULL){
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
	while(curr != NULL){
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


bool insert(int k){
	Node* h = new Node(k, INS, NULL);

	enlist(h);
	bool b = helpInsert(h,k);
	if(! atomic_compare_exchange_strong(&h->state, &INS, (b ? DAT : INV))){
		helpRemove(h,k);
		h->state = INV;
	}
	return b;
}

bool remove(int k){
	Node* h = new Node(k, REM, NULL);

	enlist(h);
	bool b = helpRemove(h,k);
	h->state = INV;
	return b;
}

bool contains(int k){
	Node* curr;
	curr = head;
	while(curr != NULL){
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

void print(){
		Node* curr = head;
		while(curr != NULL){
			cout << "Key" << curr->key << "State" << *(curr->state) << endl;
			curr = curr->next;
		}
}


void perm(int n_transactions, int n_insert, int n_contains, int n_remove) {
	int num;
	for(int i = 0 ;i < n_transactions/n_threads ;i++){
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
	perm(500000, 33,34,33);
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

	auto start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	thread th[16];

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations1);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	auto finish = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations2);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations3);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations4);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations5);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations6);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations7);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations8);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	start = std::chrono::high_resolution_clock::now();

	srand((unsigned)time(0));
	initialize();

	for(int i = 0 ; i< n_threads; i++){
		th[i] = thread(operations9);
	}
	for(int i = 0 ; i< n_threads; i++){
		th[i].join();
	}

	finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count()/1000000 << "\n";

	return 0;
}
