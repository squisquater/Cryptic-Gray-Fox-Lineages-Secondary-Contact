#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=50M
#SBATCH -o "plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.out"

module load plink

plink --file /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/populations.plink --allow-extra-chr --dog --pca --mds-plot 2 --cluster --recode --out /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/clustering

#This resulted in the following eigenvalues (default 20)
#61.8734
#8.32637
#3.55333
#2.5566
#2.41043
#2.21752
#2.09845
#2.04105
#1.9766
#1.84235
#1.7639
#1.73282
#1.68545
#1.68011
#1.58843
#1.52006
#1.4813
#1.44151
#1.40426
#1.4002
