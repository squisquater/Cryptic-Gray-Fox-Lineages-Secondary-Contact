#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plink_filtering.out"

module load plink

plink --file plinkfileprefix --mind 0.32 --allow-extra-chr --dog --recode --out plink_filtered02_output

