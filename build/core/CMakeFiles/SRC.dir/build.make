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
include core/CMakeFiles/SRC.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include core/CMakeFiles/SRC.dir/compiler_depend.make

# Include the progress variables for this target.
include core/CMakeFiles/SRC.dir/progress.make

# Include the compile flags for this target's objects.
include core/CMakeFiles/SRC.dir/flags.make

core/CMakeFiles/SRC.dir/src/Socket.cpp.o: core/CMakeFiles/SRC.dir/flags.make
core/CMakeFiles/SRC.dir/src/Socket.cpp.o: /home/ruslan/Рабочий\ стол/Socket/core/src/Socket.cpp
core/CMakeFiles/SRC.dir/src/Socket.cpp.o: core/CMakeFiles/SRC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/CMakeFiles/SRC.dir/src/Socket.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CMakeFiles/SRC.dir/src/Socket.cpp.o -MF CMakeFiles/SRC.dir/src/Socket.cpp.o.d -o CMakeFiles/SRC.dir/src/Socket.cpp.o -c "/home/ruslan/Рабочий стол/Socket/core/src/Socket.cpp"

core/CMakeFiles/SRC.dir/src/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SRC.dir/src/Socket.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/core/src/Socket.cpp" > CMakeFiles/SRC.dir/src/Socket.cpp.i

core/CMakeFiles/SRC.dir/src/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SRC.dir/src/Socket.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/core/src/Socket.cpp" -o CMakeFiles/SRC.dir/src/Socket.cpp.s

core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o: core/CMakeFiles/SRC.dir/flags.make
core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o: /home/ruslan/Рабочий\ стол/Socket/core/src/tcpClient.cpp
core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o: core/CMakeFiles/SRC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o -MF CMakeFiles/SRC.dir/src/tcpClient.cpp.o.d -o CMakeFiles/SRC.dir/src/tcpClient.cpp.o -c "/home/ruslan/Рабочий стол/Socket/core/src/tcpClient.cpp"

core/CMakeFiles/SRC.dir/src/tcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SRC.dir/src/tcpClient.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/core/src/tcpClient.cpp" > CMakeFiles/SRC.dir/src/tcpClient.cpp.i

core/CMakeFiles/SRC.dir/src/tcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SRC.dir/src/tcpClient.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/core/src/tcpClient.cpp" -o CMakeFiles/SRC.dir/src/tcpClient.cpp.s

core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o: core/CMakeFiles/SRC.dir/flags.make
core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o: /home/ruslan/Рабочий\ стол/Socket/core/src/tcpServer.cpp
core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o: core/CMakeFiles/SRC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o -MF CMakeFiles/SRC.dir/src/tcpServer.cpp.o.d -o CMakeFiles/SRC.dir/src/tcpServer.cpp.o -c "/home/ruslan/Рабочий стол/Socket/core/src/tcpServer.cpp"

core/CMakeFiles/SRC.dir/src/tcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SRC.dir/src/tcpServer.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/core/src/tcpServer.cpp" > CMakeFiles/SRC.dir/src/tcpServer.cpp.i

core/CMakeFiles/SRC.dir/src/tcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SRC.dir/src/tcpServer.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/core/src/tcpServer.cpp" -o CMakeFiles/SRC.dir/src/tcpServer.cpp.s

core/CMakeFiles/SRC.dir/src/udpClient.cpp.o: core/CMakeFiles/SRC.dir/flags.make
core/CMakeFiles/SRC.dir/src/udpClient.cpp.o: /home/ruslan/Рабочий\ стол/Socket/core/src/udpClient.cpp
core/CMakeFiles/SRC.dir/src/udpClient.cpp.o: core/CMakeFiles/SRC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object core/CMakeFiles/SRC.dir/src/udpClient.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CMakeFiles/SRC.dir/src/udpClient.cpp.o -MF CMakeFiles/SRC.dir/src/udpClient.cpp.o.d -o CMakeFiles/SRC.dir/src/udpClient.cpp.o -c "/home/ruslan/Рабочий стол/Socket/core/src/udpClient.cpp"

core/CMakeFiles/SRC.dir/src/udpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SRC.dir/src/udpClient.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/core/src/udpClient.cpp" > CMakeFiles/SRC.dir/src/udpClient.cpp.i

core/CMakeFiles/SRC.dir/src/udpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SRC.dir/src/udpClient.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/core/src/udpClient.cpp" -o CMakeFiles/SRC.dir/src/udpClient.cpp.s

core/CMakeFiles/SRC.dir/src/udpServer.cpp.o: core/CMakeFiles/SRC.dir/flags.make
core/CMakeFiles/SRC.dir/src/udpServer.cpp.o: /home/ruslan/Рабочий\ стол/Socket/core/src/udpServer.cpp
core/CMakeFiles/SRC.dir/src/udpServer.cpp.o: core/CMakeFiles/SRC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object core/CMakeFiles/SRC.dir/src/udpServer.cpp.o"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CMakeFiles/SRC.dir/src/udpServer.cpp.o -MF CMakeFiles/SRC.dir/src/udpServer.cpp.o.d -o CMakeFiles/SRC.dir/src/udpServer.cpp.o -c "/home/ruslan/Рабочий стол/Socket/core/src/udpServer.cpp"

core/CMakeFiles/SRC.dir/src/udpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SRC.dir/src/udpServer.cpp.i"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ruslan/Рабочий стол/Socket/core/src/udpServer.cpp" > CMakeFiles/SRC.dir/src/udpServer.cpp.i

core/CMakeFiles/SRC.dir/src/udpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SRC.dir/src/udpServer.cpp.s"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ruslan/Рабочий стол/Socket/core/src/udpServer.cpp" -o CMakeFiles/SRC.dir/src/udpServer.cpp.s

# Object files for target SRC
SRC_OBJECTS = \
"CMakeFiles/SRC.dir/src/Socket.cpp.o" \
"CMakeFiles/SRC.dir/src/tcpClient.cpp.o" \
"CMakeFiles/SRC.dir/src/tcpServer.cpp.o" \
"CMakeFiles/SRC.dir/src/udpClient.cpp.o" \
"CMakeFiles/SRC.dir/src/udpServer.cpp.o"

# External object files for target SRC
SRC_EXTERNAL_OBJECTS =

core/libSRC.a: core/CMakeFiles/SRC.dir/src/Socket.cpp.o
core/libSRC.a: core/CMakeFiles/SRC.dir/src/tcpClient.cpp.o
core/libSRC.a: core/CMakeFiles/SRC.dir/src/tcpServer.cpp.o
core/libSRC.a: core/CMakeFiles/SRC.dir/src/udpClient.cpp.o
core/libSRC.a: core/CMakeFiles/SRC.dir/src/udpServer.cpp.o
core/libSRC.a: core/CMakeFiles/SRC.dir/build.make
core/libSRC.a: core/CMakeFiles/SRC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/ruslan/Рабочий стол/Socket/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libSRC.a"
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && $(CMAKE_COMMAND) -P CMakeFiles/SRC.dir/cmake_clean_target.cmake
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SRC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/CMakeFiles/SRC.dir/build: core/libSRC.a
.PHONY : core/CMakeFiles/SRC.dir/build

core/CMakeFiles/SRC.dir/clean:
	cd "/home/ruslan/Рабочий стол/Socket/build/core" && $(CMAKE_COMMAND) -P CMakeFiles/SRC.dir/cmake_clean.cmake
.PHONY : core/CMakeFiles/SRC.dir/clean

core/CMakeFiles/SRC.dir/depend:
	cd "/home/ruslan/Рабочий стол/Socket/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ruslan/Рабочий стол/Socket" "/home/ruslan/Рабочий стол/Socket/core" "/home/ruslan/Рабочий стол/Socket/build" "/home/ruslan/Рабочий стол/Socket/build/core" "/home/ruslan/Рабочий стол/Socket/build/core/CMakeFiles/SRC.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : core/CMakeFiles/SRC.dir/depend

