#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p med
#SBATCH --mem=8G
#SBATCH -o "runfineradstrutree.out"

~/bin/fineRADstructure/finestructure -m T -x 10000 populations.haps_chunks.out fineRADstruoutput.mcmc.xml fineRADstruoutput.tree.xml

#include appropriate filepaths to fineRADstructure folder, _chunks.out file, .mcmc.xml file, and .tree.xml file
