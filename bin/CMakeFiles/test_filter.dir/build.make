# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/siinthddev/CppProjects/LabsOtys/WConanExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/siinthddev/CppProjects/LabsOtys/WConanExample/bin

# Include any dependencies generated for this target.
include CMakeFiles/test_filter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_filter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_filter.dir/flags.make

CMakeFiles/test_filter.dir/test/test_filter.cpp.o: CMakeFiles/test_filter.dir/flags.make
CMakeFiles/test_filter.dir/test/test_filter.cpp.o: ../test/test_filter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siinthddev/CppProjects/LabsOtys/WConanExample/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_filter.dir/test/test_filter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_filter.dir/test/test_filter.cpp.o -c /home/siinthddev/CppProjects/LabsOtys/WConanExample/test/test_filter.cpp

CMakeFiles/test_filter.dir/test/test_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_filter.dir/test/test_filter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siinthddev/CppProjects/LabsOtys/WConanExample/test/test_filter.cpp > CMakeFiles/test_filter.dir/test/test_filter.cpp.i

CMakeFiles/test_filter.dir/test/test_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_filter.dir/test/test_filter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siinthddev/CppProjects/LabsOtys/WConanExample/test/test_filter.cpp -o CMakeFiles/test_filter.dir/test/test_filter.cpp.s

CMakeFiles/test_filter.dir/src/ip_filter.cpp.o: CMakeFiles/test_filter.dir/flags.make
CMakeFiles/test_filter.dir/src/ip_filter.cpp.o: ../src/ip_filter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siinthddev/CppProjects/LabsOtys/WConanExample/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_filter.dir/src/ip_filter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_filter.dir/src/ip_filter.cpp.o -c /home/siinthddev/CppProjects/LabsOtys/WConanExample/src/ip_filter.cpp

CMakeFiles/test_filter.dir/src/ip_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_filter.dir/src/ip_filter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siinthddev/CppProjects/LabsOtys/WConanExample/src/ip_filter.cpp > CMakeFiles/test_filter.dir/src/ip_filter.cpp.i

CMakeFiles/test_filter.dir/src/ip_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_filter.dir/src/ip_filter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siinthddev/CppProjects/LabsOtys/WConanExample/src/ip_filter.cpp -o CMakeFiles/test_filter.dir/src/ip_filter.cpp.s

# Object files for target test_filter
test_filter_OBJECTS = \
"CMakeFiles/test_filter.dir/test/test_filter.cpp.o" \
"CMakeFiles/test_filter.dir/src/ip_filter.cpp.o"

# External object files for target test_filter
test_filter_EXTERNAL_OBJECTS =

bin/test_filter: CMakeFiles/test_filter.dir/test/test_filter.cpp.o
bin/test_filter: CMakeFiles/test_filter.dir/src/ip_filter.cpp.o
bin/test_filter: CMakeFiles/test_filter.dir/build.make
bin/test_filter: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.74.0
bin/test_filter: CMakeFiles/test_filter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/siinthddev/CppProjects/LabsOtys/WConanExample/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/test_filter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_filter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_filter.dir/build: bin/test_filter

.PHONY : CMakeFiles/test_filter.dir/build

CMakeFiles/test_filter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_filter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_filter.dir/clean

CMakeFiles/test_filter.dir/depend:
	cd /home/siinthddev/CppProjects/LabsOtys/WConanExample/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siinthddev/CppProjects/LabsOtys/WConanExample /home/siinthddev/CppProjects/LabsOtys/WConanExample /home/siinthddev/CppProjects/LabsOtys/WConanExample/bin /home/siinthddev/CppProjects/LabsOtys/WConanExample/bin /home/siinthddev/CppProjects/LabsOtys/WConanExample/bin/CMakeFiles/test_filter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_filter.dir/depend

