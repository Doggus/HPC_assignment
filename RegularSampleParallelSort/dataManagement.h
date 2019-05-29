#include <stdio.h>
#include <stdlib.h>

#ifndef REGULARSAMPLESORT_DATAMANAGEMENT_H
#define REGULARSAMPLESORT_DATAMANAGEMENT_H

int validate(int[],int);
void populateArray(int[], int);

//determines if an array is sorted or not (0 = false, 1 = true)
int validate(int arr[], int len)
{
    int temp;
    for (int i = 1; i < len; ++i)
    {
        temp = arr[i-1];
        if(arr[i] < temp)
        {
            return 0;
        }
    }

    return 1;
}

void populateArray(int array[], int size)
{

    array[size];
    for (int i = 0; i < size; ++i)
    {
        array[i] = rand()%2000000;
    }
}


#endif //REGULARSAMPLESORT_DATAMANAGEMENT_H
