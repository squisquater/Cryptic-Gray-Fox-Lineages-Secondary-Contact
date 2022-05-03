#!/bin/bash -l
#SBATCH -t 10:00
#SBATCH -p med
#SBATCH --mem=50M
#SBATCH -o "chooseK_pruned.out"

python /home/hennelly/bin/fastStructure/chooseK.py --input=/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/populations.plink_fastStructure
