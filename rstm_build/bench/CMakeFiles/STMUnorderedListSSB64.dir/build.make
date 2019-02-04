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
include bench/CMakeFiles/STMUnorderedListSSB64.dir/depend.make

# Include the progress variables for this target.
include bench/CMakeFiles/STMUnorderedListSSB64.dir/progress.make

# Include the compile flags for this target's objects.
include bench/CMakeFiles/STMUnorderedListSSB64.dir/flags.make

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o: bench/CMakeFiles/STMUnorderedListSSB64.dir/flags.make
bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o: /home/abhi/Multicore/rstm/bench/STMUnorderedList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o"
	cd /home/abhi/Multicore/rstm_build/bench && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o -c /home/abhi/Multicore/rstm/bench/STMUnorderedList.cpp

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.i"
	cd /home/abhi/Multicore/rstm_build/bench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abhi/Multicore/rstm/bench/STMUnorderedList.cpp > CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.i

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.s"
	cd /home/abhi/Multicore/rstm_build/bench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abhi/Multicore/rstm/bench/STMUnorderedList.cpp -o CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.s

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.requires:

.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.requires

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.provides: bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.requires
	$(MAKE) -f bench/CMakeFiles/STMUnorderedListSSB64.dir/build.make bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.provides.build
.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.provides

bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.provides.build: bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o


# Object files for target STMUnorderedListSSB64
STMUnorderedListSSB64_OBJECTS = \
"CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o"

# External object files for target STMUnorderedListSSB64
STMUnorderedListSSB64_EXTERNAL_OBJECTS =

bench/STMUnorderedListSSB64: bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o
bench/STMUnorderedListSSB64: bench/CMakeFiles/STMUnorderedListSSB64.dir/build.make
bench/STMUnorderedListSSB64: libstm/libstm64.a
bench/STMUnorderedListSSB64: bench/CMakeFiles/STMUnorderedListSSB64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abhi/Multicore/rstm_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable STMUnorderedListSSB64"
	cd /home/abhi/Multicore/rstm_build/bench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/STMUnorderedListSSB64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bench/CMakeFiles/STMUnorderedListSSB64.dir/build: bench/STMUnorderedListSSB64

.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/build

bench/CMakeFiles/STMUnorderedListSSB64.dir/requires: bench/CMakeFiles/STMUnorderedListSSB64.dir/STMUnorderedList.cpp.o.requires

.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/requires

bench/CMakeFiles/STMUnorderedListSSB64.dir/clean:
	cd /home/abhi/Multicore/rstm_build/bench && $(CMAKE_COMMAND) -P CMakeFiles/STMUnorderedListSSB64.dir/cmake_clean.cmake
.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/clean

bench/CMakeFiles/STMUnorderedListSSB64.dir/depend:
	cd /home/abhi/Multicore/rstm_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abhi/Multicore/rstm /home/abhi/Multicore/rstm/bench /home/abhi/Multicore/rstm_build /home/abhi/Multicore/rstm_build/bench /home/abhi/Multicore/rstm_build/bench/CMakeFiles/STMUnorderedListSSB64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bench/CMakeFiles/STMUnorderedListSSB64.dir/depend

