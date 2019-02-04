#include <stm/config.h>
#if defined(STM_CPU_SPARC)
#include <sys/types.h>
#endif
#include <iostream>
#include <alt-license/rand_r_32.h>
#include <api/api.hpp>
#include "bmconfig.hpp"

#ifdef SINGLE_SOURCE_BUILD
#include "bmharness.cpp"
#endif

#include "STMList.hpp"

List* SET;

/*** Initialize the counter */
void bench_init()
{
    SET = new List();
    // warm up the datastructure
    //
    // NB: if we switch to CGL, we can initialize without transactions
    TM_BEGIN_FAST_INITIALIZATION();
    for (uint32_t w = 0; w < CFG.elements; w+=2)
        SET->insert(w TM_PARAM);
    TM_END_FAST_INITIALIZATION();
}

void perm(uint32_t* seed, int n_transactions, int n_insert, int n_contains, int n_remove){
  uint32_t num;
	for(int i = 0 ;i < n_transactions ;i++){
    TM_BEGIN(atomic){
      for(int j = 0 ;j < n_insert ;j++){
          num = rand_r_32(seed) % CFG.elements;
      		SET->insert(num TM_PARAM);
      }
      for(int j = 0 ;j < n_contains ;j++){
          num = rand_r_32(seed) % CFG.elements;
      		SET->contains(num TM_PARAM);
      }
      for(int j = 0 ;j < n_remove ;j++){
          num = rand_r_32(seed) % CFG.elements;
      		SET->remove(num TM_PARAM);
      }
	   }TM_END;
   }
}

void perm2(uint32_t* seed, int n_transactions, int n_insert, int n_contains, int n_remove){
  uint32_t num;
	for(int i = 0 ;i < n_transactions ;i++){

      for(int j = 0 ;j < n_insert ;j++){
        TM_BEGIN(atomic){
          num = rand_r_32(seed) % CFG.elements;
      		SET->insert(num TM_PARAM);
        }TM_END;
      }
      for(int j = 0 ;j < n_contains ;j++){
        TM_BEGIN(atomic){
          num = rand_r_32(seed) % CFG.elements;
      		SET->contains(num TM_PARAM);
        }TM_END;
      }
      for(int j = 0 ;j < n_remove ;j++){
        TM_BEGIN(atomic){
          num = rand_r_32(seed) % CFG.elements;
      		SET->remove(num TM_PARAM);
        }TM_END;
      }

   }
}


/*** Run a bunch of increment transactions */
void bench_test(uintptr_t, uint32_t* seed)
{
  // perm(seed, 500000, 1,1,1);
  // perm(seed, 500000, 2,2,2);
  perm(seed, 500000, 4,4,4);
  // perm(seed, 50000, 9,90,1);
  // perm(seed, 500000, 25,30,25);
  // perm(seed, 500000, 33,34,33);
  // perm2(seed, 10000, 9,90,1);
  // perm2(seed, 10000, 25,30,25);
  // perm2(seed, 10000, 33,34,33);
}

/*** Ensure the final state of the benchmark satisfies all invariants */
bool bench_verify() { return true; }

/**
 *  Step 4:
 *    Include the code that has the main() function, and the code for creating
 *    threads and calling the three above-named functions.  Don't forget to
 *    provide an arg reparser.
 */

/*** Deal with special names that map to different M values */
void bench_reparse()
{
    if      (CFG.bmname == "")          CFG.bmname   = "STMList";
    else if (CFG.bmname == "STMList")      CFG.elements = 256;
}
