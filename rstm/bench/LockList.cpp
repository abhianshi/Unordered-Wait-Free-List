#include <iostream>
#include <atomic>
#include <thread>
#include <cstdlib>  // for rand/srand
#include <ctime>   // for time
#include <mutex>
#include <time.h>

using namespace std;
std::mutex mtx;

int elements = 256;
int n_threads = 8;

class List{
  struct Node{
    int key;
    Node* next;
    Node(int val = -1) : key(val), next() { }
    Node(int val, Node* next) : key(val), next(next) { }
  };
  public:
    Node* head;
    List();
    void insert(int val);
    void remove(int val);
    bool contains(int val);
};

List::List() : head(new Node()) { }

void List::insert(int val){
  mtx.lock();
  const Node* prev(head);
  const Node* curr(prev->next);
  if(!contains(val)){
    Node* insert_point = const_cast<Node*>(prev);
    Node* new_node = (Node*) malloc(sizeof(Node));
    new_node->key = val;
    new_node->next = const_cast<Node*>(curr);
    insert_point->next = new_node;
  }
  mtx.unlock();
}

void List::remove(int val){
  mtx.lock();
  const Node* prev(head);
  const Node* curr(prev->next);
  while (curr != NULL) {
    if (curr->key == val) {
      Node* mod_point = const_cast<Node*>(prev);
      mod_point->next = curr->next;
      free(const_cast<Node*>(curr));
      break;
    }
    prev = curr;
    curr = prev->next;
  }
  mtx.unlock();
}

bool List::contains(int val){
  const Node* curr(head);
  curr = curr->next;
  while (curr != NULL) {
      if (curr->key == val)
          return true;
      curr = curr->next;
  }
  return false;
}

List list;

void initialize(){
	for(int i = 0 ;i < elements ;i=i+2){
		list.insert(elements);
	}
}


void perm(int n_transactions, int n_insert, int n_contains, int n_remove) {
	int num;
	for(int i = 0 ;i < n_transactions/n_threads ;i++){
		for(int j = 0 ;j < n_insert ;j++){
			num = (rand() % elements) + 1;
			list.insert(num);
		}
		for(int j = 0 ;j < n_contains ;j++){
			num = (rand() % elements) + 1;
			list.contains(num);
		}
		for(int j = 0 ;j < n_remove ;j++){
			num = (rand() % elements) + 1;
			list.remove(num);
		}
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
