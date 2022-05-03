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


#Removed 1786658 loci that did not pass sample/population constraints from 1817068 loci.
#Kept 30410 loci, composed of 2691200 sites; 0 of those sites were filtered, 44931 variant sites remained.
#    1911442 genomic sites, of which 749905 were covered by multiple loci (39.2%).
#Mean genotyped sites per locus: 88.47bp (stderr 0.07).

#Population summary statistics (more detail in populations.sumstats_summary.tsv):
#  East: 89.912 samples per locus; pi: 0.10845; all/variant/polymorphic sites: 2690468/44931/27381; private alleles: 1323
#  West: 155.26 samples per locus; pi: 0.19924; all/variant/polymorphic sites: 2690468/44931/43608; private alleles: 17550

#Population pair divergence statistics (more in populations.fst_summary.tsv and populations.phistats_summary.tsv):
#  East-West: mean Fst: 0.12347; mean Phi_st: 0.21228; mean Fst': 0.16672
