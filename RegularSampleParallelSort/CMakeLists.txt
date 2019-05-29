cmake_minimum_required(VERSION 3.14)
project(RegularSampleSort C)

# added -fopenmp
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c11 -fopenmp")

add_executable(RegularSampleSort regularSampleParallelSort.c omp_RegSampleSort.h dataManagement.h)