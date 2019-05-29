#include <stdio.h>
#include "dataManagement.h"
#include "omp_RegSampleSort.h"

int main()
{
    printf("OpenMP Regular Sample Parallel Sort tests: \n");

    //defining arrays and their sizes:
    int len1 = 10000;
    int arr1[len1];

    int len2 = 100000;
    int arr2[len2];

    int len3 = 1000000;
    int arr3[len3];

    omp_test(arr1,len1);
    omp_test(arr2,len2);
    omp_test(arr3,len3);

    return 0;
}