#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p med
#SBATCH --mem=8G
#SBATCH -o "runfineradstructure1.out"

~/bin/fineRADstructure/finestructure -x 100000 -y 100000 -z 1000 populations.haps_chunks.out fineRADstruoutput.mcmc.xml

#include appropriate filepaths to fineRADstructure folder, _chunks.out file, and .mcmc.xml file
