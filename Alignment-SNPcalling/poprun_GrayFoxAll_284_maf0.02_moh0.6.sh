#!/bin/bash -l
#SBATCH -t 5:00:00
#SBATCH -p med
#SBATCH --mem=24G
#SBATCH -o "poprun_GrayFoxAll_284_maf0.02_moh0.6.out"

module load stacks

populations -P ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/ -O ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/ -M ~/GrayFox/Stacks_PopMaps/PopMap_AllGrayFox_284.txt \
--fstats \
--min_maf 0.02 --max_obs_het 0.60 \
--structure --vcf --plink --radpainter --genepop --phylip_var --treemix \
