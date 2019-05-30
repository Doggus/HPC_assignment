#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=1 —ntasks=1
#SBATCH --time=50:00
#SBATCH --job-name="rsps_1"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

Export OMP_NUMTHREADS=1
srun regularSampleParallelSort.c
