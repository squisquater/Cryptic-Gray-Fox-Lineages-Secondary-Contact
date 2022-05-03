#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.out"

module load plink

plink --file /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25 --allow-extra-chr --dog --pca 3 --mds-plot 3 --cluster --recode --out /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25

#This resulted in the following eigenvalues
#PC1: 63.5364
#PC2: 8.3803
#PC3: 3.57343
