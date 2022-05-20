#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plinkfilter_mind0.9.out"

module load plink

plink --file $INPUT --mind 0.9 --allow-extra-chr --dog --recode --missing --out $OUTPUT
