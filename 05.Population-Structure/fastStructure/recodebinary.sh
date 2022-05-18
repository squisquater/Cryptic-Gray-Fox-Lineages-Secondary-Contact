#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=200M
#SBATCH -o "plink_recode.out"

module load plink

plink --file populations.plink --make-bed --out populations.plink_recodebinary

#include appropriate filespaths
