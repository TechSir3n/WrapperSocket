# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_SOURCE_DIR = "/home/ruslan/Рабочий стол/Socket"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ruslan/Рабочий стол/Socket/build"

# Include any dependencies generated for this target.
include utils/CMakeFiles/UTILS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utils/CMakeFiles/UTILS.dir/compiler_depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/UTILS.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/UTILS.dir/flags.make

utils/CMakeFiles/UTILS.dir/src/template.cpp.o: utils/CMakeFiles/UTILS.dir/flags.make
utils/CMakeFiles/UTILS.dir/src/template.cpp.o: /home/ruslan/Рабочий\ стол/Socket/utils/src/template.cpp
utils/CMakeFiles/UTILS.dir/src/template.cpp.o: utils/CMakeFiles/UTILS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/UTILS.dir/src/template.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/CMakeFiles/UTILS.dir/src/template.cpp.o -MF CMakeFiles/UTILS.dir/src/template.cpp.o.d -o CMakeFiles/UTILS.dir/src/template.cpp.o -c "/home/ruslan/Рабочий стол/Socket/utils/src/template.cpp"

utils/CMakeFiles/UTILS.dir/src/template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UTILS.dir/src/template.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/utils/src/template.cpp" > CMakeFiles/UTILS.dir/src/template.cpp.i

utils/CMakeFiles/UTILS.dir/src/template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UTILS.dir/src/template.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/utils/src/template.cpp" -o CMakeFiles/UTILS.dir/src/template.cpp.s

# Object files for target UTILS
UTILS_OBJECTS = \
"CMakeFiles/UTILS.dir/src/template.cpp.o"

# External object files for target UTILS
UTILS_EXTERNAL_OBJECTS =

utils/libUTILS.a: utils/CMakeFiles/UTILS.dir/src/template.cpp.o
utils/libUTILS.a: utils/CMakeFiles/UTILS.dir/build.make
utils/libUTILS.a: utils/CMakeFiles/UTILS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libUTILS.a"
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && $(CMAKE_COMMAND) -P CMakeFiles/UTILS.dir/cmake_clean_target.cmake
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UTILS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/UTILS.dir/build: utils/libUTILS.a
.PHONY : utils/CMakeFiles/UTILS.dir/build

utils/CMakeFiles/UTILS.dir/clean:
	cd "/home/ruslan/Рабочий стол/Socket/build/utils" && $(CMAKE_COMMAND) -P CMakeFiles/UTILS.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/UTILS.dir/clean

utils/CMakeFiles/UTILS.dir/depend:
	cd "/home/ruslan/Рабочий стол/Socket/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ruslan/Рабочий стол/Socket" "/home/ruslan/Рабочий стол/Socket/utils" "/home/ruslan/Рабочий стол/Socket/build" "/home/ruslan/Рабочий стол/Socket/build/utils" "/home/ruslan/Рабочий стол/Socket/build/utils/CMakeFiles/UTILS.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : utils/CMakeFiles/UTILS.dir/depend

