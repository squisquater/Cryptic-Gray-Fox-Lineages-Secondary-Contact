#!/bin/bash -l
#SBATCH -t 4:30:00
#SBATCH -p med
#SBATCH --mem=12G
#SBATCH -o "stacksrun20190919_284_AllSamples.out"
 
module load stacks

ref_map.pl -T 1 --samples ~/GrayFox/trimmed_fastq/AllRuns/ --popmap ~/GrayFox/Stacks_PopMaps/PopMap_AllGrayFox_284.txt --unpaired -o ~/GrayFox/Stacks_Outputs/GrayFoxAll_284

#The pipeline runs gstacks (calls SNPs) and also runs the population function that generates summary statistics. 
#You can run the populations function separately afterwards to specify more specific outputs and add filtering.

###################################
###gstacks log file for this run###
###################################

#gstacks v2.2, executed 2019-09-22 21:42:57
#/share/apps/stacks-2.2/bin/gstacks -I /home/sophiepq/GrayFox/trimmed_fastq/AllRuns/ -M /home/sophiepq/GrayFox/Stacks_PopMaps/PopMap_AllGrayFox_284.txt -O /home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284 -t 1 --unpaired
#Locus/sample distributions will be written to '/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/gstacks.log.distribs'.

#Configuration for this run:
 # Input mode: reference-based, unpaired
 # Population map: '/home/sophiepq/GrayFox/Stacks_PopMaps/PopMap_AllGrayFox_284.txt'
 # Input files: 284, e.g. '/home/sophiepq/GrayFox/trimmed_fastq/AllRuns/trimmed_S13-1542.R1.sort.bam'
 # Output to: '/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/'
 # Model: marukilow (var_alpha: 0.05, gt_alpha: 0.05)
 # Ignoring pairing information.

#Reading BAM headers...
#Processing all loci...
#1K...
#2K...
#5K...
#10K...
#20K...
#50K...
#100K...
#200K...
#500K...
#1000K...
#done.

#Read 882459624 BAM records:
  #kept 827429564 primary alignments (94.3%)
  #skipped 0 primary alignments with insufficient mapping qualities (0.0%)
  #skipped 50212067 excessively soft-clipped primary alignments (5.7%)
  #skipped 0 unmapped reads (0.0%)
  #skipped some suboptimal (secondary/supplementary) alignment records

  #Per-sample stats (details in 'gstacks.log.distribs'):
    #read 3107252.2 records/sample (32-12902865)
    #kept 60.0%-94.8% of these

#Built 1817068 loci comprising 827429564 reads.

#Genotyped 1817068 loci:
  #effective per-sample coverage: mean=32.9x, stdev=26.3x, min=1.0x, max=125.3x
  #mean number of sites per locus: 83.8
  #a consistent phasing was found for 418975 of out 461307 (90.8%) diploid loci needing phasing

#gstacks is done.
