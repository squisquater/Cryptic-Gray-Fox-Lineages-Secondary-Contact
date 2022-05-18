#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "chooseK_pruned.out"

python fastStructure/chooseK.py --input=populations.plink_fastStructure

#Include appropriate filepaths
