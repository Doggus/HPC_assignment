CC=gcc
LIBS=-lm

main: regularSampleParallelSort.c omp_RegSampleSort.h dataManagement.h
	$(CC) -o RSPS -fopenmp regularSampleParallelSort.c -lm -std=c11

run:
	./RSPS

