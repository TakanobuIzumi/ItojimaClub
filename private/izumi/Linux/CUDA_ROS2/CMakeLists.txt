cmake_minimum_required(VERSION 3.16)

set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)

project(CUDA_ROS2 CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(CUDA_ROS2 main.cu)

set_target_properties(
        CUDA_ROS2
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)