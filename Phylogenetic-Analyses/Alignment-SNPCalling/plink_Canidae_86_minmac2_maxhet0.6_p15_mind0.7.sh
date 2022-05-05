#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p high
#SBATCH --mem=200M
#SBATCH -o "plink_Canidae_86_minmac2_maxhet0.6_p15_mind0.7.out"

module load plink

plink --file ~/GrayFox/Stacks_Outputs/Canidae_90/populations.plink --missing --keep ~/GrayFox/Stacks_Outputs/Canidae_90/keep_86.txt --recode --mds-plot 3 --pca 3 --cluster --allow-extra-chr --dog --out ~/GrayFox/Stacks_Outputs/Canidae_90/plink_Canidae_86_minmac2_maxhet0.6_p15_mind0.7

## Note that I filtered out one kit fox with >70% missing data and I could(should) have done with with a --mind filter, 
## but for reason I looked at the missingness data output from the previous script and just removed it using a keeplist (keep_86.txt)
