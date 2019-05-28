#include <iostream>
#include "dataManagement.h"
#include "sequentialQuickSort.h"
#include "ompQuickSort.h"

using namespace std;

int main()
{
    //defining arrays and their sizes:
    int len1 = 10000;
    int arr1[len1];

    int len2 = 100000;
    int arr2[len2];

    int len3 = 1000000;
    int arr3[len3];

    populateArray(arr1, len1);
    populateArray(arr2, len2);
    populateArray(arr3, len3);


    std::cout << "Sequential QuickSort times: " << std::endl << std::endl;
    seq_test(arr1,len1);
    seq_test(arr2,len2);
    seq_test(arr3,len3);


    std::cout << "OpenMP QuickSort times: " << std::endl << std::endl;
    omp_test(arr1,len1);
    omp_test(arr2,len2);
    omp_test(arr3,len3);

   

    return 0;
}