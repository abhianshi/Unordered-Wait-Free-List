#include <cstdlib>
#include <iostream>
#include <alt-license/rand_r_32.h>
#include <signal.h>
#include <pthread.h>
#include <api/api.hpp>
#include <common/platform.hpp>
#include <common/locks.hpp>
#include "bmconfig.hpp"
#include "../include/api/api.hpp"
#include <ctime>
#include <cstdlib>
#include<time.h>
using namespace std;


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
    void insert(int val TM_ARG);
    void remove(int val TM_ARG);
    bool contains(int val TM_ARG);
};

List::List() : head(new Node()) { }

void List::insert(int val TM_ARG){
  const Node* prev(head);
  const Node* curr(TM_READ(prev->next));
  if(!contains(val TM_PARAM)){
    Node* insert_point = const_cast<Node*>(prev);
    Node* new_node = (Node*) TM_ALLOC(sizeof(Node));
    new_node->key = val;
    new_node->next = const_cast<Node*>(curr);
    TM_WRITE(insert_point->next, new_node);
  }
}

void List::remove(int val TM_ARG){
  const Node* prev(head);
  const Node* curr(TM_READ(prev->next));
  while (curr != NULL) {
    if (TM_READ(curr->key) == val) {
      Node* mod_point = const_cast<Node*>(prev);
      TM_WRITE(mod_point->next, TM_READ(curr->next));
      TM_FREE(const_cast<Node*>(curr));
      break;
    }
    prev = curr;
    curr = TM_READ(prev->next);
  }
}

bool List::contains(int val TM_ARG){
  const Node* curr(head);
  curr = TM_READ(curr->next);
  while (curr != NULL) {
      if (TM_READ(curr->key) == val)
          return true;
      curr = TM_READ(curr->next);
  }
  return false;
}


const int THREAD_COUNT = 8;
const int NUM_TRANSACTIONS = 1000;

List list;

Config::Config() :
    bmname(""),
    duration(1),
    execute(0),
    threads(THREAD_COUNT),
    nops_after_tx(0),
    elements(1000),
    lookpct(34),
    inspct(66),
    sets(1),
    ops(1),
    time(0),
    running(true),
    txcount(0)
{
}

Config CFG TM_ALIGN(64);
uint32_t s(1000);
uint32_t* seed(&s);


void distribution1(){
  for(int i=0; i<NUM_TRANSACTIONS; i++) {

      uint32_t val = rand_r_32(seed) % CFG.elements;
      uint32_t act = rand_r_32(seed) % 100;
      if (act < CFG.lookpct) {
          TM_BEGIN(atomic) {
              list.contains(val TM_PARAM);
          } TM_END;
      }
      else if (act < CFG.inspct) {
          TM_BEGIN(atomic) {
              list.insert(val TM_PARAM);
          } TM_END;
      }
      else {
          TM_BEGIN(atomic) {
              list.remove(val TM_PARAM);
          } TM_END;
      }
  }
}


void* run_thread(void* i) {
    // each thread must be initialized before running transactions
    TM_THREAD_INIT();
    distribution1();
    TM_THREAD_SHUTDOWN();
}


using namespace std;

int main(int argc, char** argv){
  // auto start = std::chrono::high_resolution_clock::now();
  // srand((unsigned)time(0));

  TM_SYS_INIT();

  // original thread must be initalized also
  TM_THREAD_INIT();

  void* args[256];
  pthread_t tid[256];

  // set up configuration structs for the threads we'll create
  pthread_attr_t attr;
  pthread_attr_init(&attr);
  pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM);
  for (uint32_t i = 0; i < CFG.threads; i++)
      args[i] = (void*)i;

  // actually create the threads
  for (uint32_t j = 1; j < CFG.threads; j++)
      pthread_create(&tid[j], &attr, &run_thread, args[j]);

  // all of the other threads should be queued up, waiting to run the
  // benchmark, but they can't until this thread starts the benchmark
  // too...
  run_thread(args[0]);

  // everyone should be done.  Join all threads so we don't leave anything
  // hanging around
  for (uint32_t k = 1; k < CFG.threads; k++)
      pthread_join(tid[k], NULL);



  // auto finish = std::chrono::high_resolution_clock::now();
  // std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count() << "ns\n";
  // std::cout << "csv"
  //           << ", ALG=" << TM_GET_ALGNAME()
  //           << ", B=" << CFG.bmname     << ", R=" << CFG.lookpct
  //           << ", d=" << CFG.duration   << ", p=" << CFG.threads
  //           << ", X=" << CFG.execute    << ", m=" << CFG.elements
  //           << ", S=" << CFG.sets       << ", O=" << CFG.ops
  //           << ", txns=" << CFG.txcount << ", time=" << CFG.time
  //           << ", throughput="
  //           << (1000000000LL * CFG.txcount) / (CFG.time)
  //           << std::endl;
  TM_SYS_SHUTDOWN();

  return 0;
}
