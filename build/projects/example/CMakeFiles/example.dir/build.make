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
CMAKE_SOURCE_DIR = /home/rubcap8/Documents/reallab3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rubcap8/Documents/reallab3/build

# Include any dependencies generated for this target.
include projects/example/CMakeFiles/example.dir/depend.make

# Include the progress variables for this target.
include projects/example/CMakeFiles/example.dir/progress.make

# Include the compile flags for this target's objects.
include projects/example/CMakeFiles/example.dir/flags.make

projects/example/CMakeFiles/example.dir/code/exampleapp.cc.o: projects/example/CMakeFiles/example.dir/flags.make
projects/example/CMakeFiles/example.dir/code/exampleapp.cc.o: ../projects/example/code/exampleapp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object projects/example/CMakeFiles/example.dir/code/exampleapp.cc.o"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/code/exampleapp.cc.o -c /home/rubcap8/Documents/reallab3/projects/example/code/exampleapp.cc

projects/example/CMakeFiles/example.dir/code/exampleapp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/code/exampleapp.cc.i"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rubcap8/Documents/reallab3/projects/example/code/exampleapp.cc > CMakeFiles/example.dir/code/exampleapp.cc.i

projects/example/CMakeFiles/example.dir/code/exampleapp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/code/exampleapp.cc.s"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rubcap8/Documents/reallab3/projects/example/code/exampleapp.cc -o CMakeFiles/example.dir/code/exampleapp.cc.s

projects/example/CMakeFiles/example.dir/code/main.cc.o: projects/example/CMakeFiles/example.dir/flags.make
projects/example/CMakeFiles/example.dir/code/main.cc.o: ../projects/example/code/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object projects/example/CMakeFiles/example.dir/code/main.cc.o"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/code/main.cc.o -c /home/rubcap8/Documents/reallab3/projects/example/code/main.cc

projects/example/CMakeFiles/example.dir/code/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/code/main.cc.i"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rubcap8/Documents/reallab3/projects/example/code/main.cc > CMakeFiles/example.dir/code/main.cc.i

projects/example/CMakeFiles/example.dir/code/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/code/main.cc.s"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rubcap8/Documents/reallab3/projects/example/code/main.cc -o CMakeFiles/example.dir/code/main.cc.s

# Object files for target example
example_OBJECTS = \
"CMakeFiles/example.dir/code/exampleapp.cc.o" \
"CMakeFiles/example.dir/code/main.cc.o"

# External object files for target example
example_EXTERNAL_OBJECTS =

projects/example/example: projects/example/CMakeFiles/example.dir/code/exampleapp.cc.o
projects/example/example: projects/example/CMakeFiles/example.dir/code/main.cc.o
projects/example/example: projects/example/CMakeFiles/example.dir/build.make
projects/example/example: engine/core/libcore.a
projects/example/example: engine/render/librender.a
projects/example/example: engine/core/libcore.a
projects/example/example: engine/render/librender.a
projects/example/example: exts/glew/libglew.a
projects/example/example: exts/glfw/src/libglfw3.a
projects/example/example: /usr/lib/librt.so
projects/example/example: /usr/lib/libm.so
projects/example/example: /usr/lib/libX11.so
projects/example/example: /usr/lib/libXrandr.so
projects/example/example: /usr/lib/libXinerama.so
projects/example/example: /usr/lib/libXxf86vm.so
projects/example/example: /usr/lib/libXcursor.so
projects/example/example: exts/libimgui.a
projects/example/example: exts/libnanovg.a
projects/example/example: exts/libimgui.a
projects/example/example: exts/libnanovg.a
projects/example/example: projects/example/CMakeFiles/example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable example"
	cd /home/rubcap8/Documents/reallab3/build/projects/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
projects/example/CMakeFiles/example.dir/build: projects/example/example

.PHONY : projects/example/CMakeFiles/example.dir/build

projects/example/CMakeFiles/example.dir/clean:
	cd /home/rubcap8/Documents/reallab3/build/projects/example && $(CMAKE_COMMAND) -P CMakeFiles/example.dir/cmake_clean.cmake
.PHONY : projects/example/CMakeFiles/example.dir/clean

projects/example/CMakeFiles/example.dir/depend:
	cd /home/rubcap8/Documents/reallab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rubcap8/Documents/reallab3 /home/rubcap8/Documents/reallab3/projects/example /home/rubcap8/Documents/reallab3/build /home/rubcap8/Documents/reallab3/build/projects/example /home/rubcap8/Documents/reallab3/build/projects/example/CMakeFiles/example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : projects/example/CMakeFiles/example.dir/depend

