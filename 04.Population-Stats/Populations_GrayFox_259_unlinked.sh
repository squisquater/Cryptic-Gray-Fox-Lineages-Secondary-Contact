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


#Removed 1786658 loci that did not pass sample/population constraints from 1817068 loci.
#Kept 30410 loci, composed of 2691200 sites; 0 of those sites were filtered, 30410 variant sites remained.
#    1911442 genomic sites, of which 749905 were covered by multiple loci (39.2%).
#Mean genotyped sites per locus: 88.47bp (stderr 0.07).

#Population summary statistics (more detail in populations.sumstats_summary.tsv):
#  East: 89.905 samples per locus; pi: 0.10743; all/variant/polymorphic sites: 2690468/30410/18472; private alleles: 934
#  West: 155.26 samples per locus; pi: 0.19518; all/variant/polymorphic sites: 2690468/30410/29476; private alleles: 11938

#Population pair divergence statistics (more in populations.fst_summary.tsv and populations.phistats_summary.tsv):
#  East-West: mean Fst: 0.12395; mean Phi_st: 0.19296; mean Fst': 0.12552; mean Dxy: 0.0036008
