#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p high
#SBATCH --mem=30G
#SBATCH -o "Populations_GrayFox_259_unlinked.out"

module load stacks

populations -P ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/ -O ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked -M ~/GrayFox/Stacks_PopMaps/PopMap_GrayFox259_EastWest.txt \
-W ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32_snpWhitelist.txt \
--write-random-snp \
--fstats -k --smooth --sigma 150000 --bootstrap \
--structure --vcf --plink --radpainter --genepop --treemix \
