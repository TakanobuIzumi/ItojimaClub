# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/114/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/114/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CUDA_ROS2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CUDA_ROS2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CUDA_ROS2.dir/flags.make

CMakeFiles/CUDA_ROS2.dir/main.cu.o: CMakeFiles/CUDA_ROS2.dir/flags.make
CMakeFiles/CUDA_ROS2.dir/main.cu.o: ../main.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/CUDA_ROS2.dir/main.cu.o"
	/usr/local/cuda/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -dc /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/main.cu -o CMakeFiles/CUDA_ROS2.dir/main.cu.o

CMakeFiles/CUDA_ROS2.dir/main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/CUDA_ROS2.dir/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/CUDA_ROS2.dir/main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/CUDA_ROS2.dir/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target CUDA_ROS2
CUDA_ROS2_OBJECTS = \
"CMakeFiles/CUDA_ROS2.dir/main.cu.o"

# External object files for target CUDA_ROS2
CUDA_ROS2_EXTERNAL_OBJECTS =

CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o: CMakeFiles/CUDA_ROS2.dir/main.cu.o
CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o: CMakeFiles/CUDA_ROS2.dir/build.make
CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o: CMakeFiles/CUDA_ROS2.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CUDA_ROS2.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CUDA_ROS2.dir/build: CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o

.PHONY : CMakeFiles/CUDA_ROS2.dir/build

# Object files for target CUDA_ROS2
CUDA_ROS2_OBJECTS = \
"CMakeFiles/CUDA_ROS2.dir/main.cu.o"

# External object files for target CUDA_ROS2
CUDA_ROS2_EXTERNAL_OBJECTS =

CUDA_ROS2: CMakeFiles/CUDA_ROS2.dir/main.cu.o
CUDA_ROS2: CMakeFiles/CUDA_ROS2.dir/build.make
CUDA_ROS2: CMakeFiles/CUDA_ROS2.dir/cmake_device_link.o
CUDA_ROS2: CMakeFiles/CUDA_ROS2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CUDA executable CUDA_ROS2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CUDA_ROS2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CUDA_ROS2.dir/build: CUDA_ROS2

.PHONY : CMakeFiles/CUDA_ROS2.dir/build

CMakeFiles/CUDA_ROS2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CUDA_ROS2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CUDA_ROS2.dir/clean

CMakeFiles/CUDA_ROS2.dir/depend:
	cd /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2 /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2 /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug /home/ubuntu/Desktop/ItojimaClub/private/izumi/Linux/CUDA_ROS2/cmake-build-debug/CMakeFiles/CUDA_ROS2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CUDA_ROS2.dir/depend

