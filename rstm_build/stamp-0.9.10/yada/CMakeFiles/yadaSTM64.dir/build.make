# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abhi/Multicore/rstm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abhi/Multicore/rstm_build

# Include any dependencies generated for this target.
include stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/depend.make

# Include the progress variables for this target.
include stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/progress.make

# Include the compile flags for this target's objects.
include stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/avltree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/avltree.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/avltree.c > CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/avltree.c -o CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/heap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/heap.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/heap.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/heap.c > CMakeFiles/yadaSTM64.dir/__/lib/heap.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/heap.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/heap.c -o CMakeFiles/yadaSTM64.dir/__/lib/heap.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/list.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/list.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/list.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/list.c > CMakeFiles/yadaSTM64.dir/__/lib/list.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/list.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/list.c -o CMakeFiles/yadaSTM64.dir/__/lib/list.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/mt19937ar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/mt19937ar.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/mt19937ar.c > CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/mt19937ar.c -o CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/pair.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/pair.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/pair.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/pair.c > CMakeFiles/yadaSTM64.dir/__/lib/pair.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/pair.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/pair.c -o CMakeFiles/yadaSTM64.dir/__/lib/pair.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/queue.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/queue.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/queue.c > CMakeFiles/yadaSTM64.dir/__/lib/queue.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/queue.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/queue.c -o CMakeFiles/yadaSTM64.dir/__/lib/queue.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/random.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/random.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/random.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/random.c > CMakeFiles/yadaSTM64.dir/__/lib/random.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/random.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/random.c -o CMakeFiles/yadaSTM64.dir/__/lib/random.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/rbtree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/rbtree.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/rbtree.c > CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/rbtree.c -o CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/thread.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/thread.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/thread.c > CMakeFiles/yadaSTM64.dir/__/lib/thread.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/thread.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/thread.c -o CMakeFiles/yadaSTM64.dir/__/lib/thread.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/lib/vector.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/lib/vector.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/__/lib/vector.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/lib/vector.c > CMakeFiles/yadaSTM64.dir/__/lib/vector.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/__/lib/vector.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/lib/vector.c -o CMakeFiles/yadaSTM64.dir/__/lib/vector.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/yada/coordinate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/coordinate.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/yada/coordinate.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/coordinate.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/yada/coordinate.c > CMakeFiles/yadaSTM64.dir/coordinate.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/coordinate.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/yada/coordinate.c -o CMakeFiles/yadaSTM64.dir/coordinate.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/yada/element.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/element.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/yada/element.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/element.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/yada/element.c > CMakeFiles/yadaSTM64.dir/element.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/element.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/yada/element.c -o CMakeFiles/yadaSTM64.dir/element.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/yada/mesh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/mesh.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/yada/mesh.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/mesh.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/yada/mesh.c > CMakeFiles/yadaSTM64.dir/mesh.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/mesh.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/yada/mesh.c -o CMakeFiles/yadaSTM64.dir/mesh.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/yada/region.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/region.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/yada/region.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/region.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/yada/region.c > CMakeFiles/yadaSTM64.dir/region.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/region.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/yada/region.c -o CMakeFiles/yadaSTM64.dir/region.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o


stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/flags.make
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o: /home/abhi/Multicore/rstm/stamp-0.9.10/yada/yada.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yadaSTM64.dir/yada.c.o -c /home/abhi/Multicore/rstm/stamp-0.9.10/yada/yada.c

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yadaSTM64.dir/yada.c.i"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/stamp-0.9.10/yada/yada.c > CMakeFiles/yadaSTM64.dir/yada.c.i

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yadaSTM64.dir/yada.c.s"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/stamp-0.9.10/yada/yada.c -o CMakeFiles/yadaSTM64.dir/yada.c.s

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.requires:

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.provides: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.requires
	$(MAKE) -f stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.provides.build
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.provides

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.provides.build: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o


# Object files for target yadaSTM64
yadaSTM64_OBJECTS = \
"CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/list.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/random.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o" \
"CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o" \
"CMakeFiles/yadaSTM64.dir/coordinate.c.o" \
"CMakeFiles/yadaSTM64.dir/element.c.o" \
"CMakeFiles/yadaSTM64.dir/mesh.c.o" \
"CMakeFiles/yadaSTM64.dir/region.c.o" \
"CMakeFiles/yadaSTM64.dir/yada.c.o"

# External object files for target yadaSTM64
yadaSTM64_EXTERNAL_OBJECTS =

stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build.make
stamp-0.9.10/yada/yadaSTM64: libstm/libstm64.a
stamp-0.9.10/yada/yadaSTM64: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable yadaSTM64"
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yadaSTM64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build: stamp-0.9.10/yada/yadaSTM64

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/build

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/avltree.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/heap.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/list.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/mt19937ar.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/pair.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/queue.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/random.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/rbtree.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/thread.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/__/lib/vector.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/coordinate.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/element.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/mesh.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/region.c.o.requires
stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires: stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/yada.c.o.requires

.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/requires

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/clean:
	cd /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada && $(CMAKE_COMMAND) -P CMakeFiles/yadaSTM64.dir/cmake_clean.cmake
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/clean

stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/depend:
	cd /home/abhi/Multicore/rstm_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abhi/Multicore/rstm /home/abhi/Multicore/rstm/stamp-0.9.10/yada /home/abhi/Multicore/rstm_build /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada /home/abhi/Multicore/rstm_build/stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : stamp-0.9.10/yada/CMakeFiles/yadaSTM64.dir/depend

