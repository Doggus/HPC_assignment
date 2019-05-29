#include <stdio.h>
#include "dataManagement.h"
#include "omp_RegSampleSort.h"

int main()
{
    printf("OpenMP Regular Sample Parallel Sort tests: \n");

    omp_test(10000,10);
    omp_test(50000,10);
    omp_test(100000,10);
    omp_test(500000,10);
    omp_test(1000000,10);
    omp_test(2000000,10);

    return 0;
}