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
include ChatNetworking/CMakeFiles/ChatNetworking.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ChatNetworking/CMakeFiles/ChatNetworking.dir/compiler_depend.make

# Include the progress variables for this target.
include ChatNetworking/CMakeFiles/ChatNetworking.dir/progress.make

# Include the compile flags for this target's objects.
include ChatNetworking/CMakeFiles/ChatNetworking.dir/flags.make

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/flags.make
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o: /home/olsson/devel/CLion/Chat/ChatNetworking/src/client/tcp_client.cpp
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o -MF CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o.d -o CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o -c /home/olsson/devel/CLion/Chat/ChatNetworking/src/client/tcp_client.cpp

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.i"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olsson/devel/CLion/Chat/ChatNetworking/src/client/tcp_client.cpp > CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.i

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.s"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olsson/devel/CLion/Chat/ChatNetworking/src/client/tcp_client.cpp -o CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.s

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/flags.make
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o: /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_connection.cpp
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o -MF CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o.d -o CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o -c /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_connection.cpp

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.i"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_connection.cpp > CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.i

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.s"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_connection.cpp -o CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.s

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/flags.make
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o: /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_server.cpp
ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o: ChatNetworking/CMakeFiles/ChatNetworking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o -MF CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o.d -o CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o -c /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_server.cpp

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.i"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_server.cpp > CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.i

ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.s"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olsson/devel/CLion/Chat/ChatNetworking/src/server/tcp_server.cpp -o CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.s

# Object files for target ChatNetworking
ChatNetworking_OBJECTS = \
"CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o" \
"CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o" \
"CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o"

# External object files for target ChatNetworking
ChatNetworking_EXTERNAL_OBJECTS =

ChatNetworking/libChatNetworking.a: ChatNetworking/CMakeFiles/ChatNetworking.dir/src/client/tcp_client.cpp.o
ChatNetworking/libChatNetworking.a: ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_connection.cpp.o
ChatNetworking/libChatNetworking.a: ChatNetworking/CMakeFiles/ChatNetworking.dir/src/server/tcp_server.cpp.o
ChatNetworking/libChatNetworking.a: ChatNetworking/CMakeFiles/ChatNetworking.dir/build.make
ChatNetworking/libChatNetworking.a: ChatNetworking/CMakeFiles/ChatNetworking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olsson/devel/CLion/Chat/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libChatNetworking.a"
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && $(CMAKE_COMMAND) -P CMakeFiles/ChatNetworking.dir/cmake_clean_target.cmake
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatNetworking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ChatNetworking/CMakeFiles/ChatNetworking.dir/build: ChatNetworking/libChatNetworking.a
.PHONY : ChatNetworking/CMakeFiles/ChatNetworking.dir/build

ChatNetworking/CMakeFiles/ChatNetworking.dir/clean:
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking && $(CMAKE_COMMAND) -P CMakeFiles/ChatNetworking.dir/cmake_clean.cmake
.PHONY : ChatNetworking/CMakeFiles/ChatNetworking.dir/clean

ChatNetworking/CMakeFiles/ChatNetworking.dir/depend:
	cd /home/olsson/devel/CLion/Chat/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olsson/devel/CLion/Chat /home/olsson/devel/CLion/Chat/ChatNetworking /home/olsson/devel/CLion/Chat/cmake-build-debug /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking /home/olsson/devel/CLion/Chat/cmake-build-debug/ChatNetworking/CMakeFiles/ChatNetworking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ChatNetworking/CMakeFiles/ChatNetworking.dir/depend

