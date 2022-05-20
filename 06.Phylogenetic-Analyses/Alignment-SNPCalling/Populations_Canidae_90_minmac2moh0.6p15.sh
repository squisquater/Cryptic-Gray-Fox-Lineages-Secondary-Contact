#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p high
#SBATCH --mem=24G
#SBATCH -o "Populations_Canidae_90_minmac2moh0.6p15.out"

module load stacks

populations -P ~/GrayFox/Stacks_Outputs/Canidae_90 -O ~/GrayFox/Stacks_Outputs/Canidae_90 -M ~/GrayFox/Stacks_PopMaps/Canidae_90.txt \
--min-mac 2 --max-obs-het 0.60 -p 15 \
--structure --vcf --plink --radpainter --genepop --treemix \

## Remove singletons (--mac 2)
## Remove paralogs (--max-obs-het 0.6)
## exclude sites that are not present (i.e. have at least one individual with a SNP call) across all 15 Canid lineages in this study.
