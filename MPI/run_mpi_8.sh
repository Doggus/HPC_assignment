#!/bin/sh
#SBATCH —account=icts
#SBATCH —partition=curie
#SBATCH —nodes=1 —ntasks=8
#SBATCH --time=50:00
#SBATCH --job-name="mpi_8"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

module load mpi/openmpi-4.0.1

mpirun -n 8 mpi.c
