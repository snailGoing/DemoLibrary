# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.29.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.29.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/src/native-lib.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/native-lib.cpp.o: src/native-lib.cpp
CMakeFiles/test.dir/src/native-lib.cpp.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/src/native-lib.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test.dir/src/native-lib.cpp.o -MF CMakeFiles/test.dir/src/native-lib.cpp.o.d -o CMakeFiles/test.dir/src/native-lib.cpp.o -c /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/src/native-lib.cpp

CMakeFiles/test.dir/src/native-lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test.dir/src/native-lib.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/src/native-lib.cpp > CMakeFiles/test.dir/src/native-lib.cpp.i

CMakeFiles/test.dir/src/native-lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/native-lib.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/src/native-lib.cpp -o CMakeFiles/test.dir/src/native-lib.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/native-lib.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

libtest.dylib: CMakeFiles/test.dir/src/native-lib.cpp.o
libtest.dylib: CMakeFiles/test.dir/build.make
libtest.dylib: outputs/core/libcore.a
libtest.dylib: outputs/common/libcommon.a
libtest.dylib: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtest.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: libtest.dylib
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp /Users/qimao/AndroidStudioProjects/test/my_library/platform/android/app/src/main/cpp/CMakeFiles/test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test.dir/depend

