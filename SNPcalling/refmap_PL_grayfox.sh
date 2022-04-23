#!/bin/bash -l
#SBATCH -t 4:30:00
#SBATCH -p med
#SBATCH --mem=12G
#SBATCH -o "stacksrun20190919_285_AllSamples.out"
 
module load stacks
ref_map.pl -T 1 --samples ~/GrayFox/trimmed_fastq/AllRuns/ --popmap ~/GrayFox/Stacks_PopMaps/PopMap_AllGrayFox_285.txt --unpaired -o ~/GrayFox/Stacks_Outputs/GrayFoxAll_285

#The pipeline runs gstacks (calls SNPs) and also runs the population function that generates summary statistics. 
