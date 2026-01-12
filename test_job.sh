#!/bin/bash
#SBATCH --job-name=test_job       # Job name
#SBATCH --output=output_%j.txt    # Stdout output file, %j = job ID
#SBATCH --error=error_%j.txt      # Stderr file
#SBATCH --time=00:01:00           # Max runtime (hh:mm:ss)
#SBATCH --partition=rome          # Partition/queue
#SBATCH --ntasks=1                # Number of tasks (processes)
#SBATCH --cpus-per-task=1         # Number of CPUs per task
#SBATCH --mem=1G                  # Memory per node

# Load Python module
module load 2025
module load Python/3.13.1-GCCcore-14.2.0

# Activate your virtual environment
source ~/torch-env/bin/activate

# Run your Python script
python test_job_snellius.py
