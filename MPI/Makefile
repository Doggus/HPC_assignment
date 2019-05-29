CC=mpicc
LIBS=-lm

main: main.c MPI_Quicksort.h MPI_RSPS.h dataManagement.h
	$(CC) -o MPI -fopenmp  main.c -lm -std=c11

run:
	mpirun -n 4 MPI

