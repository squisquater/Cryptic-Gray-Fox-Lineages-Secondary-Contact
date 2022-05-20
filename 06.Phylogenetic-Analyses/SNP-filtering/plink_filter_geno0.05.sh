#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=200M
#SBATCH -o "plink_filter_geno0.05"

module load plink

plink --file $INPUT --geno 0.05 --allow-extra-chr --dog --out $OUTPUT

#431303 variants removed due to missing genotype data (--geno).
#125044 variants 
