#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plinkfilter_mind0.68.out"

module load plink

plink --file plinkfilter_mind0.9_geno0.2 --mind 0.68 --allow-extra-chr --dog --recode --out plinkfilter_mind0.9_geno0.2_mind0.68

