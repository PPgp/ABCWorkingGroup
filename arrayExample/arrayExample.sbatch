#!/bin/bash
#SBATCH --job-name=<job_name>
#SBATCH --partition=short
#SBATCH --time 0-11:59 # Runtime in D-HH:MM
#SBATCH --mem-per-cpu=8000
#SBATCH --out <name>_%j.out # File to which STDOUT will be written
#SBATCH --error <name>_%j.err # File to which STDERR will be written
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=END
#SBATCH --mail-user=<youremail>@uw.edu
#SBATCH --array=1-<last_TASK_ID>

module load R
Rscript <main_R_File>.R $SLURM_ARRAY_TASK_ID "<path_to_.rda_file>" <sharedArg1> <sharedArg2> 
