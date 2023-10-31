#!/bin/bash -l
#SBATCH --job-name=<openMP>
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output <openMP>-job_%j.out
#SBATCH --error <openMP>-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun <openMP>