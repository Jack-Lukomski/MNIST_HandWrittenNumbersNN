# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build

# Include any dependencies generated for this target.
include Sources/Driver/CMakeFiles/driver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Sources/Driver/CMakeFiles/driver.dir/compiler_depend.make

# Include the progress variables for this target.
include Sources/Driver/CMakeFiles/driver.dir/progress.make

# Include the compile flags for this target's objects.
include Sources/Driver/CMakeFiles/driver.dir/flags.make

Sources/Driver/CMakeFiles/driver.dir/main.c.obj: Sources/Driver/CMakeFiles/driver.dir/flags.make
Sources/Driver/CMakeFiles/driver.dir/main.c.obj: C:/Users/jtluk/GitHub/MNIST_HandWrittenNumbersNN/Sources/Driver/main.c
Sources/Driver/CMakeFiles/driver.dir/main.c.obj: Sources/Driver/CMakeFiles/driver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Sources/Driver/CMakeFiles/driver.dir/main.c.obj"
	cd /d C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver && C:\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Sources/Driver/CMakeFiles/driver.dir/main.c.obj -MF CMakeFiles\driver.dir\main.c.obj.d -o CMakeFiles\driver.dir\main.c.obj -c C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Sources\Driver\main.c

Sources/Driver/CMakeFiles/driver.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/driver.dir/main.c.i"
	cd /d C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver && C:\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Sources\Driver\main.c > CMakeFiles\driver.dir\main.c.i

Sources/Driver/CMakeFiles/driver.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/driver.dir/main.c.s"
	cd /d C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver && C:\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Sources\Driver\main.c -o CMakeFiles\driver.dir\main.c.s

# Object files for target driver
driver_OBJECTS = \
"CMakeFiles/driver.dir/main.c.obj"

# External object files for target driver
driver_EXTERNAL_OBJECTS =

Sources/Driver/driver.exe: Sources/Driver/CMakeFiles/driver.dir/main.c.obj
Sources/Driver/driver.exe: Sources/Driver/CMakeFiles/driver.dir/build.make
Sources/Driver/driver.exe: Libaries/NeuralC/Sources/Modules/NeuralNetwork/libNeuralNetwork.a
Sources/Driver/driver.exe: Libaries/NeuralC/Sources/Modules/ActivationFunctions/libActivationFunctions.a
Sources/Driver/driver.exe: Libaries/NeuralC/Sources/Modules/LayerCreation/libLayerCreation.a
Sources/Driver/driver.exe: Libaries/NeuralC/Sources/Modules/Matrix/libMatrix.a
Sources/Driver/driver.exe: Sources/Driver/CMakeFiles/driver.dir/linkLibs.rsp
Sources/Driver/driver.exe: Sources/Driver/CMakeFiles/driver.dir/objects1.rsp
Sources/Driver/driver.exe: Sources/Driver/CMakeFiles/driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable driver.exe"
	cd /d C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\driver.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Sources/Driver/CMakeFiles/driver.dir/build: Sources/Driver/driver.exe
.PHONY : Sources/Driver/CMakeFiles/driver.dir/build

Sources/Driver/CMakeFiles/driver.dir/clean:
	cd /d C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver && $(CMAKE_COMMAND) -P CMakeFiles\driver.dir\cmake_clean.cmake
.PHONY : Sources/Driver/CMakeFiles/driver.dir/clean

Sources/Driver/CMakeFiles/driver.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Sources\Driver C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver C:\Users\jtluk\GitHub\MNIST_HandWrittenNumbersNN\Build\Sources\Driver\CMakeFiles\driver.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Sources/Driver/CMakeFiles/driver.dir/depend

