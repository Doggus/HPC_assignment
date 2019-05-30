#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 --ntasks=4
#SBATCH --time=50:00
#SBATCH --job-name="qs_4"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

export OMP_NUMTHREADS=4
make
./quicksort
