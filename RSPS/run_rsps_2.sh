#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 --ntasks=2
#SBATCH --time=50:00
#SBATCH --job-name="rsps_2"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

export OMP_NUM_THREADS=2
make
./RSPS
