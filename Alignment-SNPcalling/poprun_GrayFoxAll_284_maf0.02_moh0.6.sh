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

###### Summary of output file ####
#==========================================
#SLURM_JOB_ID = 14514395
#SLURM_NODELIST = c8-86
#==========================================
#Module stacks 2.2 loaded.
#BETA: Ignoring --treemix output request, which is not currently implemented.
#ogging to '/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/populations.log'.
#Locus/sample distributions will be written to '/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_284_maf0.02_moh0.6/populations.log.distribs'.
#populations parameters selected:
#  Percent samples limit per population: 0
#  Locus Population limit: 1
# Log liklihood filtering: off; threshold: 0
#  Minor allele frequency cutoff: 0.02
#  Maximum observed heterozygosity cutoff: 0.6
#  Applying Fst correction: none.
#  Pi/Fis kernel smoothing: off
#  Fstats kernel smoothing: off
#  Bootstrap resampling: off

#Parsing population map...
#The population map contained 284 samples, 3 population(s), 1 group(s).
#Working on 284 samples.
#Working on 3 population(s):

#...
#...
#...
#...

#Removed 0 loci that did not pass sample/population constraints from 1817068 loci.
#Kept 1817068 loci, composed of 152732001 sites; 313102 of those sites were filtered, 219149 variant sites remained.
#    110180670 genomic sites, of which 32464511 were covered by multiple loci (29.5%).
#Mean genotyped sites per locus: 83.79bp (stderr 0.01).

#Population summary statistics (more detail in populations.sumstats_summary.tsv):
#  West: 22.735 samples per locus; pi: 0.17617; all/variant/polymorphic sites: 61415320/197390/113905; private alleles: 25129
#  Texas: 43.193 samples per locus; pi: 0.21371; all/variant/polymorphic sites: 87901929/202783/141209; private alleles: 37108
#  East: 27.307 samples per locus; pi: 0.11755; all/variant/polymorphic sites: 82448423/188459/69335; private alleles: 18167

#Population pair divergence statistics (more in populations.fst_summary.tsv and populations.phistats_summary.tsv):
#  West-Texas: mean Fst: 0.1745; mean Phi_st: 0.17082; mean Fst': 0.16415
#  West-East: mean Fst: 0.27925; mean Phi_st: 0.35112; mean Fst': 0.33029
#  Texas-East: mean Fst: 0.21984; mean Phi_st: 0.25894; mean Fst': 0.24473
