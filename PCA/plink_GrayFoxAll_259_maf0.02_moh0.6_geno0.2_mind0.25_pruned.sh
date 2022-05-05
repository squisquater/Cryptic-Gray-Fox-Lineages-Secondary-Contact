#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=50M
#SBATCH -o "plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.out"

module load plink

plink --file /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/populations.plink --allow-extra-chr --dog --pca 258 --mds-plot 2 --cluster --recode --out /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/clustering



## Run with (n - 1) PCs, where n = number of individuals
