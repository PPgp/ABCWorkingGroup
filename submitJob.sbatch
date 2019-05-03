#!/bin/bash

#SBATCH --job-name mainName
#SBATCH --partition short
#SBATCH --ntasks 1 
#SBATCH --time 0-1:00
#SBATCH --mem-per-cpu=1000
#SBATCH -o ./logs/main.out 
#SBATCH -e ./logs/main.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<yourEmail>@uw.edu

sampleSize=5e1
resultsFile="./results/mainOutput"

module load R
Rscript --no-save main.R $sampleSize $resultsFile
