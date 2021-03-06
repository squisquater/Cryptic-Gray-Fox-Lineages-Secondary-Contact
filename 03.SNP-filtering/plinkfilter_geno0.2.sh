#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plinkfilter_mind0.9_geno0.2.out"

module load plink

plink --file $INPUT --geno 0.2 --allow-extra-chr --recode --missing --out $OUTPUT
