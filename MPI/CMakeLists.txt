cmake_minimum_required(VERSION 3.14)
project(MPI_RSPS C)

set(CMAKE_C_STANDARD 11)

include_directories(/usr/include/mpi/)

add_executable(MPI_RSPS main.c dataManagement.h MPI_RSPS.h MPI_Quicksort.h)