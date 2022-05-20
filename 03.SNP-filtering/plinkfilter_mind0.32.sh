#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plinkfilter_mind0.32.out"

module load plink

plink --file $INPUT --mind 0.32 --allow-extra-chr --dog --recode --out $OUTPUT

