# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /snap/clion/70/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/70/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liron/CLionProjects/HPC/RegularSampleParallelSort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RegularSampleSort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RegularSampleSort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RegularSampleSort.dir/flags.make

CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o: CMakeFiles/RegularSampleSort.dir/flags.make
CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o: ../regularSampleParallelSort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o   -c /home/liron/CLionProjects/HPC/RegularSampleParallelSort/regularSampleParallelSort.c

CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/liron/CLionProjects/HPC/RegularSampleParallelSort/regularSampleParallelSort.c > CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.i

CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/liron/CLionProjects/HPC/RegularSampleParallelSort/regularSampleParallelSort.c -o CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.s

# Object files for target RegularSampleSort
RegularSampleSort_OBJECTS = \
"CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o"

# External object files for target RegularSampleSort
RegularSampleSort_EXTERNAL_OBJECTS =

RegularSampleSort: CMakeFiles/RegularSampleSort.dir/regularSampleParallelSort.c.o
RegularSampleSort: CMakeFiles/RegularSampleSort.dir/build.make
RegularSampleSort: CMakeFiles/RegularSampleSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RegularSampleSort"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RegularSampleSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RegularSampleSort.dir/build: RegularSampleSort

.PHONY : CMakeFiles/RegularSampleSort.dir/build

CMakeFiles/RegularSampleSort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RegularSampleSort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RegularSampleSort.dir/clean

CMakeFiles/RegularSampleSort.dir/depend:
	cd /home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liron/CLionProjects/HPC/RegularSampleParallelSort /home/liron/CLionProjects/HPC/RegularSampleParallelSort /home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug /home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug /home/liron/CLionProjects/HPC/RegularSampleParallelSort/cmake-build-debug/CMakeFiles/RegularSampleSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RegularSampleSort.dir/depend
