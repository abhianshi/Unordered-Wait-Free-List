About:
* LockFreeLsit.cpp - Lock-Free Unordered List Implementation
* WaitFreeList.cpp - Wait-Free Unordered List Implementation
* ModifiedLockFreeList.cpp - Lock-Free with modified contains Implementation
* LockList.cpp - List with one Mutex Lock for both insert and remove method Implementation

* For list implementation except STMList, different benchmarks are in the same file as the list implementation
* To change the number of threads - change n_threads/THREADS in the respective file
* Added 9 test-runs for each file and it will run in a specific order


* STMList.hpp - Unordered List built on RSTM Library
* STMListBench.cpp - Benchmark to run STMList.hpp

* To change the number of threads for STMList, change the bmharness.cpp -> config::THREADS
* To change the test-run for STMList, uncomment the called perm() operation in STMListBench.cpp -> bench_test()

* Download rstm from "https://code.google.com/archive/p/rstm/"
* Follow Instructions in the readme, then follow the below instructions.
    1. Add all the "filename.cpp” to the “bench” folder where filnnames are all the above cpp files.
    2. Edit the file “bench/CMakeLists.txt”. Add the word "filename" to the list of base benchmarks starting on line 22.
    3. Compile RSTM by running “make” which generates an executable file called “rstm_build/bench/filenameSSB64”.
    4. Navigate to the “rstm_build/bench” folder and run “./filenameSSB64”.

* I added all the files in the CMakeLists.txt so as to compile them in a single run.
Instructions:
    1.  Go to     ./Abhianshu_Multicore_Project/src/rstm_build directory
    2.  Compile:  make
    3.  Run:      ./filenameSSB64


* The "filename.cpp" can also be compiled and run individually.
1.  Compile:  g++ -o filename -c filename.cpp
2.  Run:      ./filename
