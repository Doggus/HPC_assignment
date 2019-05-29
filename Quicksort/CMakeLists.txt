cmake_minimum_required(VERSION 3.14)
project(quicksort)

# added -fopenmp
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fopenmp")

add_executable(quicksort quicksort.cpp sequentialQuickSort.h ompQuickSort.h dataManagement.h)