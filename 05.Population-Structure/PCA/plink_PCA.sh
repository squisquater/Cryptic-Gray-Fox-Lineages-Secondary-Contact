#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=50M
#SBATCH -o "plink_PCA.out"

module load plink

plink --file populations.plink --allow-extra-chr --dog --pca 258 --cluster --recode --out plink_PCA

## Run with (n - 1) PCs, where n = number of individuals
#include appropriate filepaths
