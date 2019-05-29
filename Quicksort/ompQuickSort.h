//Code is based off of code found:
//https://www.geeksforgeeks.org/quick-sort/
//https://pushkar2196.wordpress.com/2017/02/26/quicksort/

#include <math.h>
#include <omp.h>
#include "sequentialQuickSort.h"
#include <string>

#ifndef QUICKSORT_OMPQUICKSORT_H
#define QUICKSORT_OMPQUICKSORT_H

//places numbers left and right of the pivot
int omp_partition(int [], int, int);
//parallel recursive calls
void omp_quicksort(int[], int, int);
//records time for omp quicksort
double omp_RecordTime(int[], int);
//testing function
void omp_test(int[],int);

int omp_partition(int array[], int l, int h)
{
    //pivot is last element in array
    int pivot = array[h];
    //i = index of smaller elements (initially begins at -1)
    int lowerBound = (l - 1);

    for (int j = l; j < h; j++)
    {
        //if value is less than or equal to pivot
        if (array[j] <= pivot)
        {
            lowerBound++;
            std::swap(array[lowerBound], array[j]);
        }
    }

    //after iteration is complete:
    std::swap(array[lowerBound + 1], array[h]);

    return (lowerBound + 1);
}

//Note: curly brackets are not necessary, for my own understanding
void parallel_quicksort(int arr[], int l, int h, std::string path)
{
    //Path values are for debugging

    if (l < h)
    {
        int par = omp_partition(arr, l, h);

        #pragma omp task
        {
            parallel_quicksort(arr, l, par - 1, (path + "L" ));
        }
        #pragma omp task
        {
            parallel_quicksort(arr, par + 1, h, (path + "R"));
        }

    }
}

void omp_quicksort(int arr[], int l, int h)
{
    #pragma omp parallel
    {
        #pragma omp single nowait
        {
            parallel_quicksort(arr, l, h, "_");
        }
    }
}

double omp_RecordTime(int arr[], int len)
{
    double start_time = omp_get_wtime();
    omp_quicksort(arr, 0, len - 1);
    double time = omp_get_wtime() - start_time;
    return time;
}

void omp_test(int arr[], int len)
{

    populateArray(arr, len);

    //Recording omp completion time
    double time = omp_RecordTime(arr,len);

    std::cout << "array size: " << len << std::endl;
    std::cout << "Sorted: " << validate(arr,len) << std::endl;
    std::cout << "time: " << time << std::endl;

    std::cout << std::endl;
}


#endif //QUICKSORT_OMPQUICKSORT_H
