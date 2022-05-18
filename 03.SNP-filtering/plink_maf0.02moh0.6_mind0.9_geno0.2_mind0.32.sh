#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32.out"

module load plink

plink --file /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/plink_maf0.02moh0.6_mind0.9_geno0.2 --mind 0.32 --allow-extra-chr --dog --pca 3 --mds-plot 3 --cluster --recode --out /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32
