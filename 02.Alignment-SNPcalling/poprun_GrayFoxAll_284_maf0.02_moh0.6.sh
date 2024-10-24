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

### Note that you will want to add in the [--ordered-export] parameter to avoid double calling the same SNP from different stacks loci.

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
