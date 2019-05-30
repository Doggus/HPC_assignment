#!/bin/sh
#SBATCH —account=icts
#SBATCH —partition=curie
#SBATCH —nodes=1 —ntasks=8
#SBATCH --time=50:00
#SBATCH --job-name="QuickSort"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

Export OMP_NUMTHREADS=8
srun quicksort.cpp
