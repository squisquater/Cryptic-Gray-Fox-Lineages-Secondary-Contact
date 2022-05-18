#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plink_filtering.out"

module load plink

plink --file plinkfileprefix --mind 0.32 --allow-extra-chr --dog --pca 259 --cluster --recode --out plink_filtered_output

