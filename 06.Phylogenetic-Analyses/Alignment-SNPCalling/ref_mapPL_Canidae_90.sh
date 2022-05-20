#!/bin/bash -l
#SBATCH -A ctbrowngrp
#SBATCH -t 24:00:00
#SBATCH -p bmh
#SBATCH --mem=64G
#SBATCH -o "ref_mapPL_Canidae_90.out"

module load stacks
ref_map.pl -T 6 --samples ~/GrayFox/trimmed_fastq/AllRuns/ --popmap ~/GrayFox/Stacks_PopMaps/Canidae_90.txt --unpaired -o ~/GrayFox/Stacks_Outputs/Canidae_90
