
quicksort: Quicksort/sequentialQuickSort.h Quicksort/ompQuickSort.h Quicksort/dataManagement.h Quicksort/quicksort.cpp
	g++ -o quicksort -fopenmp Quicksort/quicksort.cpp

RSPS: RSPS/regularSampleParallelSort.c RSPS/omp_RegSampleSort.h RSPS/dataManagement.h
	gcc -o RSPS -fopenmp RSPS/regularSampleParallelSort.c -lm -std=c11

MPI: MPI/main.c MPI/MPI_Quicksort.h MPI/MPI_RSPS.h MPI/dataManagement.h
	mpicc -o MPI -fopenmp MPI/main.c -lm -std=c11

run:
	./quicksort
	./RSPS
	mpirun -n 4 MPI	
	
	
