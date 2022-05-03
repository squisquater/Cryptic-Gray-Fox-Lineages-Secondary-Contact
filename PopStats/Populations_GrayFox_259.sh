#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p med
#SBATCH --mem=30G
#SBATCH -o "Populations_GrayFox_259.out"

module load stacks

populations -P ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/ -O ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25 -M ~/GrayFox/Stacks_PopMaps/PopMap_GrayFox259_EastWest.txt \
-W ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32_snpWhitelist.txt \
--fstats -k --smooth --sigma 150000 --bootstrap \
--structure --vcf --vcf_haplotypes --plink --radpainter --genepop --phylip_var --treemix \

## Note to disregard the mind 0.25 label. This was a labeling error I identified later and didn't want to go back and rename everything but this is in fact the data generated using the SNP list based on this run poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.32.sh with --mind 0.32 not --mind 0.25
