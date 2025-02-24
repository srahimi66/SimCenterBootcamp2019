#!/bin/bash

#----------------------------------------------------
# Example SLURM job script to run OpenMP applications
# on TACC's Stampede system.
#----------------------------------------------------
#SBATCH -J openmp_job       # Job name
#SBATCH -o myjob.%j.out    # Name of stdout output file(%j expands to jobId)
#SBATCH -e myjob.%j.err    # Name of stderr output file(%j expands to jobId)
#SBATCH -p normal           # Submit to the 'normal' or 'development' queue
#SBATCH -N 1                # Total number of nodes requested (16 cores/node)
#SBATCH -n 8                # Total number of mpi tasks requested
#SBATCH -t 00:00:10         # Run time (hh:mm:ss) - 1.5 hours
# The next line is required if the user has more than one project
# #SBATCH -A A-yourproject  # Allocation name to charge job against

# This example will run an OpenMP application using 16 threads

# Set the number of threads per task(Default=1)
export OMP_NUM_THREADS=16

# Run the OpenMP application
./a.out

