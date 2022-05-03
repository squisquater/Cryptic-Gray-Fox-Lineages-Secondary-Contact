#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=50M
#SBATCH -o "plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.out"

module load plink

plink --file /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/populations.plink --allow-extra-chr --dog --pca --mds-plot 2 --cluster --recode --out /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/clustering

#This resulted in the following eigenvalues (default 20)
#62.2932
#8.35452
#3.51565
#2.53517
#2.39758
#2.18454
#2.10746
#2.04799
#1.96871
#1.82882
#1.76573
#1.73164
#1.67831
#1.66845
#1.57788
#1.50128
#1.47056
#1.43552
#1.40934
#1.39881
