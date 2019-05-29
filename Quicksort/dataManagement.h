#include <fstream>
#include <iostream>

#ifndef QUICKSORT_DATAMANAGEMENT_H
#define QUICKSORT_DATAMANAGEMENT_H

int validate(int[],int);
void populateArrayFromFile(int[], std::string);
void populateArray(int[], int);
void createFileData(std::string, int);
void populateAll(int[], int[], int[]);

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

//returns array populated from file
void populateArrayFromFile(int array[], std::string filename)
{

    //read in values from arrayData.txt (integers between 1 and 1 billion)
    std::ifstream in;
    in.open(filename);

    if (!in)
    {
        std::cout << "Unable to open file" << std::endl;
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

void populateArray(int array[], int size)
{

    array[size];
    for (int i = 0; i < size; ++i)
    {
        array[i] = rand()%2000000;
    }
}

//creates text file populated with a number of random numbers between 0 and 2 million
void createFileData(std::string filename, int numberSize)
{
    std::ofstream file;
    file.open (filename);
    for (int i = 0; i < numberSize; ++i)
    {
        //Note: will have extra new line upon creation
        file << rand()%2000000 << std::endl;
    }

    file.close();

}



#endif //QUICKSORT_DATAMANAGEMENT_H
