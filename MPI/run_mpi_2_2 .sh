#!/bin/sh
#SBATCH --account=icts
#SBATCH --partition=curie
#SBATCH --nodes=2 --ntasks=2
#SBATCH --time=50:00
#SBATCH --job-name="mpi_2_2"
#SBATCH --mail-user=tldlir001@myuct.ac.za
#SBATCH --mail-type=NONE

module load mpi/openmpi-4.0.1

mpirun -n 2 main.c
