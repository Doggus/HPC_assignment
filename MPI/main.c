#include <stdio.h>
#include "MPI_RSPS.h"
#include "MPI_Quicksort.h"

int main(int argc, char *argv[])
{
    
    //Need to run to start MPI processes
    MPI_Init(&argc,&argv);

    //Testing
    RSPS_test(10000);
    //RSPS_test(50000);
    //RSPS_test(100000);
    //RSPS_test(500000);
    //RSPS_test(1000000);
    //RSPS_test(2000000);

    //Testing
    //qs_test(10000);
    //qs_test(50000);
    //qs_test(100000);
    //qs_test(500000);
    //qs_test(1000000);
    //qs_test(2000000);

    //Finishes MPI process
    MPI_Finalize();

    return 0;
}