#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p high
#SBATCH --mem=10G
#SBATCH -o "fastStructure_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.out"
#SBATCH -e "fastStructure_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.err"

for i in {2..7}
do
   python /home/hennelly/bin/fastStructure/structure.py -K ${i} --input=/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/populations.plink_recodebinary  --output=/home/sophiepq/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25/unlinked/populations.plink_fastStructure_K${i}
done
