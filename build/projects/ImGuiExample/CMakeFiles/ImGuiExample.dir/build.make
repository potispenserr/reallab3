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
include projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/depend.make

# Include the progress variables for this target.
include projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/progress.make

# Include the compile flags for this target's objects.
include projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/flags.make

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/flags.make
projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o: ../projects/ImGuiExample/code/exampleapp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o -c /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/exampleapp.cc

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.i"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/exampleapp.cc > CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.i

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.s"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/exampleapp.cc -o CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.s

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.o: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/flags.make
projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.o: ../projects/ImGuiExample/code/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.o"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ImGuiExample.dir/code/main.cc.o -c /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/main.cc

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImGuiExample.dir/code/main.cc.i"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/main.cc > CMakeFiles/ImGuiExample.dir/code/main.cc.i

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImGuiExample.dir/code/main.cc.s"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rubcap8/Documents/reallab3/projects/ImGuiExample/code/main.cc -o CMakeFiles/ImGuiExample.dir/code/main.cc.s

# Object files for target ImGuiExample
ImGuiExample_OBJECTS = \
"CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o" \
"CMakeFiles/ImGuiExample.dir/code/main.cc.o"

# External object files for target ImGuiExample
ImGuiExample_EXTERNAL_OBJECTS =

projects/ImGuiExample/ImGuiExample: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/exampleapp.cc.o
projects/ImGuiExample/ImGuiExample: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/code/main.cc.o
projects/ImGuiExample/ImGuiExample: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/build.make
projects/ImGuiExample/ImGuiExample: engine/core/libcore.a
projects/ImGuiExample/ImGuiExample: engine/render/librender.a
projects/ImGuiExample/ImGuiExample: engine/core/libcore.a
projects/ImGuiExample/ImGuiExample: engine/render/librender.a
projects/ImGuiExample/ImGuiExample: exts/glew/libglew.a
projects/ImGuiExample/ImGuiExample: exts/glfw/src/libglfw3.a
projects/ImGuiExample/ImGuiExample: /usr/lib/librt.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libm.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libX11.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libXrandr.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libXinerama.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libXxf86vm.so
projects/ImGuiExample/ImGuiExample: /usr/lib/libXcursor.so
projects/ImGuiExample/ImGuiExample: exts/libimgui.a
projects/ImGuiExample/ImGuiExample: exts/libnanovg.a
projects/ImGuiExample/ImGuiExample: exts/libimgui.a
projects/ImGuiExample/ImGuiExample: exts/libnanovg.a
projects/ImGuiExample/ImGuiExample: projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rubcap8/Documents/reallab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ImGuiExample"
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImGuiExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/build: projects/ImGuiExample/ImGuiExample

.PHONY : projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/build

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/clean:
	cd /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample && $(CMAKE_COMMAND) -P CMakeFiles/ImGuiExample.dir/cmake_clean.cmake
.PHONY : projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/clean

projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/depend:
	cd /home/rubcap8/Documents/reallab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rubcap8/Documents/reallab3 /home/rubcap8/Documents/reallab3/projects/ImGuiExample /home/rubcap8/Documents/reallab3/build /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample /home/rubcap8/Documents/reallab3/build/projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : projects/ImGuiExample/CMakeFiles/ImGuiExample.dir/depend

