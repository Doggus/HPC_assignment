#include <iostream>
#include "dataManagement.h"
#include "sequentialQuickSort.h"
#include "ompQuickSort.h"

using namespace std;

int main()
{

    std::cout << "Sequential QuickSort times: " << std::endl << std::endl;
    seq_test(10000,10);
    seq_test(50000,10);
    seq_test(100000,10);
    seq_test(500000,10);
    seq_test(1000000,10);
    seq_test(2000000,10);

    std::cout << "OpenMP QuickSort times, num threads : " << omp_get_max_threads() << std::endl << std::endl;
    omp_test(10000,10);
    omp_test(50000,10);
    omp_test(100000,10);
    omp_test(500000,10);
    omp_test(1000000,10);
    omp_test(2000000,10);

   

    return 0;
}