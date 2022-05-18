#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p med
#SBATCH --mem=8G
#SBATCH -o "runradpainter.out"

~/bin/fineRADstructure/RADpainter paint populations.haps.radpainter

#include appropriate filepaths to fineRADstructure folder and radpainter file
