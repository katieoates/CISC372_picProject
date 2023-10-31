#!/bin/bash -l
#SBATCH --job-name=<jobname>
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=<numthreads>
#SBATCH --output <jobname>-job_%j.out
#SBATCH --error <jobname>-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export 4=$SLURM_CPUS_PER_TASK

# Start my application
srun <openMP>