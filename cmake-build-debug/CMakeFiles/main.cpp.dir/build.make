# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zaduk/CLionProjects/LinkedListExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/main.cpp.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/main.cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.cpp.dir/flags.make

CMakeFiles/main.cpp.dir/listNode.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/listNode.cpp.o: ../listNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.cpp.dir/listNode.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.cpp.dir/listNode.cpp.o -c /Users/zaduk/CLionProjects/LinkedListExample/listNode.cpp

CMakeFiles/main.cpp.dir/listNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/listNode.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/CLionProjects/LinkedListExample/listNode.cpp > CMakeFiles/main.cpp.dir/listNode.cpp.i

CMakeFiles/main.cpp.dir/listNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/listNode.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/CLionProjects/LinkedListExample/listNode.cpp -o CMakeFiles/main.cpp.dir/listNode.cpp.s

CMakeFiles/main.cpp.dir/LinkedList.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/LinkedList.cpp.o: ../LinkedList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.cpp.dir/LinkedList.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.cpp.dir/LinkedList.cpp.o -c /Users/zaduk/CLionProjects/LinkedListExample/LinkedList.cpp

CMakeFiles/main.cpp.dir/LinkedList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/LinkedList.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/CLionProjects/LinkedListExample/LinkedList.cpp > CMakeFiles/main.cpp.dir/LinkedList.cpp.i

CMakeFiles/main.cpp.dir/LinkedList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/LinkedList.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/CLionProjects/LinkedListExample/LinkedList.cpp -o CMakeFiles/main.cpp.dir/LinkedList.cpp.s

# Object files for target main.cpp
main_cpp_OBJECTS = \
"CMakeFiles/main.cpp.dir/listNode.cpp.o" \
"CMakeFiles/main.cpp.dir/LinkedList.cpp.o"

# External object files for target main.cpp
main_cpp_EXTERNAL_OBJECTS =

main.cpp: CMakeFiles/main.cpp.dir/listNode.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/LinkedList.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/build.make
main.cpp: CMakeFiles/main.cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable main.cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.cpp.dir/build: main.cpp
.PHONY : CMakeFiles/main.cpp.dir/build

CMakeFiles/main.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.cpp.dir/clean

CMakeFiles/main.cpp.dir/depend:
	cd /Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zaduk/CLionProjects/LinkedListExample /Users/zaduk/CLionProjects/LinkedListExample /Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug /Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug /Users/zaduk/CLionProjects/LinkedListExample/cmake-build-debug/CMakeFiles/main.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.cpp.dir/depend

