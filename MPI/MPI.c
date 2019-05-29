#include <stdio.h>
#include "MPI_RSPS.h"
#include "MPI_quicksort.h"

int main(int argc, char *argv[])
{


    //defining arrays and their sizes:
    int len1 = 10000;
    int arr1[len1];

    int len2 = 100000;
    int arr2[len2];

    int len3 = 1000000;
    int arr3[len3];

    printf("MPI Regular Sample Parallel Sort times: \n");

    //Need to run to start MPI processes
    MPI_Init(&argc,&argv);

    //Testing
    RSPS_test(arr1,len1);
    RSPS_test(arr2,len2);
    RSPS_test(arr3,len3);

    //Finishes MPI process
    MPI_Finalize();

    return 0;
}