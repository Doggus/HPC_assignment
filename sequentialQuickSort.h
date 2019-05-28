//Code is based off of code found:
//https://www.geeksforgeeks.org/quick-sort/

//Note: needed to alter CMakeLists.txt in order to omp
#include <omp.h>
#include "dataManagement.h"

#ifndef QUICKSORT_SEQUENTIALQUICKSORT_H
#define QUICKSORT_SEQUENTIALQUICKSORT_H

// Function to swap numbers
void swap(int*,int*);
//places numbers left and right of the pivot
int partition(int [], int, int);
//recursive calls
void quicksort(int[],int,int);
//returns time taken to run quicksort sequentially
double seq_RecordTime(int[], int);
//testing function
void seq_test(int[],int);


void swap(int* x, int* y)
{
    int t = *x;
    *x = *y;
    *y = t;
}

int partition(int array[], int l, int h)
{
    //pivot is last element in array
    int pivot = array[h];
    //i = index of smaller elements (initially begins at -1)
    int i = (l - 1);

    for (int j = l; j < h; j++)
    {
        //if value is less than or equal to pivot
        if (array[j] <= pivot)
        {
            i++;
            swap(&array[i], &array[j]);
        }
    }

    //after iteration is complete:
    swap(&array[i + 1], &array[h]);
    return (i + 1);
}


void quicksort(int arr[], int l, int h)
{
    if (l < h)
    {
        int par = partition(arr, l, h);
        quicksort(arr, l, par - 1);
        quicksort(arr, par + 1, h);
    }
}

double seq_RecordTime(int arr[], int len)
{
    double start_time = omp_get_wtime();
    quicksort(arr, 0, len - 1);
    double time = omp_get_wtime() - start_time;
    return time;
}

void seq_test(int arr1[], int len)
{

    //Recording seq completion time (10,000)
    double time = seq_RecordTime(arr1,len);

    std::cout << "array size: " << len << std::endl;
    std::cout << "Sorted: " << validate(arr1,len) << std::endl;
    std::cout << "time: " << time << std::endl;

    std::cout << std::endl;

}



#endif //QUICKSORT_SEQUENTIALQUICKSORT_H
