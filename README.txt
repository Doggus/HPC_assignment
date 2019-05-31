Hi there.

Code can be compiled and run using my make files
Each folder has its own makefile. 

Code is split in different folders:

MPI: runs mpi implementations of quicksort and regular sampling parallel sort

Quicksort: runs sequential and omp implementation of quicksort

RSPS: runs omp implementation of regular sampling parallel sort

By default running the code will automatically generate random arrays (with the same seed of 2,000,000) of different sizes (10,000; 50,000; 100,000; 500,000; 1,000,000; 2,000,000) sort them using the respective sorting algorithms and return the time it tooke to run

Methods that allow the creation of text files filled with random data as well as the population of arrays from txt files are included but not actively used

Additionally all batch files neccesary to run on the cluster can be found in the respective folders

Thanks and have a great day :)
