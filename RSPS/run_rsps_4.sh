#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 --ntasks=4
#SBATCH --time=50:00
#SBATCH --job-name="rsps_4"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

export OMP_NUM_THREADS=4
make
./RSPS
