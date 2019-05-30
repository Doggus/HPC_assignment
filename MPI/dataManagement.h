
#ifndef MPI_RSPS_DATAMANAGEMENT_H
#define MPI_RSPS_DATAMANAGEMENT_H

#include <stdio.h>
#include <stdlib.h>

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

void writeResults(float result)
{
    FILE * fp;
    fp = fopen ("Result.txt","w");

    fprintf (fp, "%f\n", result);
    fclose(fp);
}

#endif //MPI_RSPS_DATAMANAGEMENT_H
