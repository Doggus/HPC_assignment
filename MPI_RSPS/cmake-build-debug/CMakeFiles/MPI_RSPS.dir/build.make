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
CMAKE_SOURCE_DIR = /home/liron/CLionProjects/HPC/MPI_RSPS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MPI_RSPS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MPI_RSPS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MPI_RSPS.dir/flags.make

CMakeFiles/MPI_RSPS.dir/main.c.o: CMakeFiles/MPI_RSPS.dir/flags.make
CMakeFiles/MPI_RSPS.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MPI_RSPS.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MPI_RSPS.dir/main.c.o   -c /home/liron/CLionProjects/HPC/MPI_RSPS/main.c

CMakeFiles/MPI_RSPS.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MPI_RSPS.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/liron/CLionProjects/HPC/MPI_RSPS/main.c > CMakeFiles/MPI_RSPS.dir/main.c.i

CMakeFiles/MPI_RSPS.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MPI_RSPS.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/liron/CLionProjects/HPC/MPI_RSPS/main.c -o CMakeFiles/MPI_RSPS.dir/main.c.s

# Object files for target MPI_RSPS
MPI_RSPS_OBJECTS = \
"CMakeFiles/MPI_RSPS.dir/main.c.o"

# External object files for target MPI_RSPS
MPI_RSPS_EXTERNAL_OBJECTS =

MPI_RSPS: CMakeFiles/MPI_RSPS.dir/main.c.o
MPI_RSPS: CMakeFiles/MPI_RSPS.dir/build.make
MPI_RSPS: CMakeFiles/MPI_RSPS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable MPI_RSPS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MPI_RSPS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MPI_RSPS.dir/build: MPI_RSPS

.PHONY : CMakeFiles/MPI_RSPS.dir/build

CMakeFiles/MPI_RSPS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MPI_RSPS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MPI_RSPS.dir/clean

CMakeFiles/MPI_RSPS.dir/depend:
	cd /home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liron/CLionProjects/HPC/MPI_RSPS /home/liron/CLionProjects/HPC/MPI_RSPS /home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug /home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug /home/liron/CLionProjects/HPC/MPI_RSPS/cmake-build-debug/CMakeFiles/MPI_RSPS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MPI_RSPS.dir/depend

