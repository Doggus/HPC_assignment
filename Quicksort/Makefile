CC=g++
LIBS=-lm

main: quicksort.o
	$(CC) -o quicksort -fopenmp quicksort.o -std=c++11

quicksort.o: sequentialQuickSort.h ompQuickSort.h dataManagement.h quicksort.cpp 
	$(CC) -c -fopenmp quicksort.cpp -std=c++11

run:
	./quicksort

