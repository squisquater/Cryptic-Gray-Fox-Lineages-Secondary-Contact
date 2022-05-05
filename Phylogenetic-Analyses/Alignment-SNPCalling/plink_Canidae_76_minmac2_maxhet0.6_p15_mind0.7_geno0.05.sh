#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=200M
#SBATCH -o "plink_Canidae_76_minmac2_maxhet0.6_p15_mind0.7_geno0.05_treemix.out"

module load plink

plink --file ~/GrayFox/Stacks_Outputs/Canidae_90/plink_Canidae_86_minmac2_maxhet0.6_p15_mind0.7_geno0.05 --family --keep keep_76.txt --freq --allow-extra-chr --dog --out ~/GrayFox/Stacks_Outputs/Canidae_90/plink_Canidae_76_minmac2_maxhet0.6_p15_mind0.7_geno0.05_treemixx


## Note this file includes a keep list with 77 canids (not 76) that passed quality filters.
## I also removed the Great Lakes wolves and the Red wolf that were originally analyzed from 
## downstream analyes as these have evidence of gene flow with other canids.
