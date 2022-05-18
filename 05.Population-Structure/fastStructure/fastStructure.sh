#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p high
#SBATCH --mem=10G
#SBATCH -o "fastStructure_K2_7.out"
#SBATCH -e "fastStructure_K2_7.err"

for i in {2..7}
do
   python fastStructure/structure.py -K ${i} --input=populations.plink_recodebinary  --output=populations.plink_fastStructure
done


#include appropriate filepaths
