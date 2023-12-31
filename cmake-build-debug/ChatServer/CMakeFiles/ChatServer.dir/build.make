# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/clion-2023.2.2/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /opt/clion-2023.2.2/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/olsson/devel/CLion/Chat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/olsson/devel/CLion/Chat/cmake-build-debug

# Include any dependencies generated for this target.
include ChatServer/CMakeFiles/ChatServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ChatServer/CMakeFiles/ChatServer.dir/compiler_depend.make

# Include the progress variables for this target.
include ChatServer/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include ChatServer/CMakeFiles/ChatServer.dir/flags.make

ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o: ChatServer/CMakeFiles/ChatServer.dir/flags.make
ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o: /home/olsson/devel/CLion/Chat/ChatServer/main.cpp
ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o: ChatServer/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o -MF CMakeFiles/ChatServer.dir/main.cpp.o.d -o CMakeFiles/ChatServer.dir/main.cpp.o -c /home/olsson/devel/CLion/Chat/ChatServer/main.cpp

ChatServer/CMakeFiles/ChatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cpp.i"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olsson/devel/CLion/Chat/ChatServer/main.cpp > CMakeFiles/ChatServer.dir/main.cpp.i

ChatServer/CMakeFiles/ChatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cpp.s"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olsson/devel/CLion/Chat/ChatServer/main.cpp -o CMakeFiles/ChatServer.dir/main.cpp.s

# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/main.cpp.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

ChatServer/ChatServer: ChatServer/CMakeFiles/ChatServer.dir/main.cpp.o
ChatServer/ChatServer: ChatServer/CMakeFiles/ChatServer.dir/build.make
ChatServer/ChatServer: ChatNetworking/libChatNetworking.a
ChatServer/ChatServer: ChatServer/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ChatServer"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ChatServer/CMakeFiles/ChatServer.dir/build: ChatServer/ChatServer
.PHONY : ChatServer/CMakeFiles/ChatServer.dir/build

ChatServer/CMakeFiles/ChatServer.dir/clean:
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : ChatServer/CMakeFiles/ChatServer.dir/clean

ChatServer/CMakeFiles/ChatServer.dir/depend:
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olsson/devel/CLion/Chat /home/olsson/devel/CLion/Chat/ChatServer /home/olsson/devel/CLion/Chat/cmake-build-debug /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatServer/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ChatServer/CMakeFiles/ChatServer.dir/depend

