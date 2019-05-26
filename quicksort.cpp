//Code is based off of code found on https://www.geeksforgeeks.org/quick-sort/

#include <fstream>
#include <iostream>
//Note: needed to alter CMakeLists.txt in order to omp
#include <omp.h>

using namespace std;

// Function to swap numbers 
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

//recursive calls
void quicksort(int arr[], int l, int h)
{
    if (l < h)
    {
        int par = partition(arr, l, h);
        quicksort(arr, l, par - 1);
        quicksort(arr, par + 1, h);
    }
}

//determines if an array is sorted or not (0 = false, 1 = true)
int validate(int arr[], int arrLen)
{
    int temp = arr[0];
    for (int i = 1; i < arrLen; ++i)
    {
        if(arr[i] < temp)
        {
            return 0;
        }
        temp = arr[i-1];

    }

    return 1;
}

//returns array populated from file
void populateArray(int array[], string filename)
{

    //read in values from arrayData.txt (integers between 1 and 1 billion)
    ifstream in;
    in.open(filename);

    if (!in)
    {
        cout << "Unable to open file" << endl;
    }
    else
    {
        int number;
        int counter = 0;
        while (in >> number)
        {
            array[counter] = number;
            counter++;
        }
    }


    in.close();
}

void createFileData(string filename, long numberSize)
{
    ofstream file;
    file.open (filename);
    for (int i = 0; i < numberSize; ++i)
    {
        file << rand()%2000000 << endl;
    }

    file.close();

}

int main()
{
    //populating array with 10,000 random numbers
    int len1 = 10000;
    int arr1[len1];
    populateArray(arr1, "/home/liron/CLionProjects/hpcAssignment/quicksort/arrayData10,000.txt");

    //populating array with 100,000 random numbers
    int len2 = 100000;
    int arr2[len2];
    populateArray(arr2, "/home/liron/CLionProjects/hpcAssignment/quicksort/arrayData100,000.txt");

    //populating array with 1,000,000 random numbers
    int len3 = 1000000;
    int arr3[len3];
    populateArray(arr3, "/home/liron/CLionProjects/hpcAssignment/quicksort/arrayData1,000,000.txt");

    //Recording completion time (10,000)
    double start_time1 = omp_get_wtime();
    quicksort(arr1, 0, len1 - 1);
    double time1 = omp_get_wtime() - start_time1;

    //Recording completion times (100,000)
    double start_time2 = omp_get_wtime();
    quicksort(arr2, 0, len2 - 1);
    double time2 = omp_get_wtime() - start_time2;

    //Recording completion times (1,000,000)
    double start_time3 = omp_get_wtime();
    quicksort(arr3, 0, len3 - 1);
    double time3 = omp_get_wtime() - start_time3;

    cout << "array size: " << len1 << endl;
    cout << "time: " << time1 << endl;

    cout << "" << endl;

    cout << "array size: " << len2 << endl;
    cout << "time: " << time2 << endl;

    cout << "" << endl;

    cout << "array size: " << len3 << endl;
    cout << "time: " << time3 << endl;

    return 0;
} 