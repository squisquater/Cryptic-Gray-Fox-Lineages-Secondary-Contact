#!/bin/bash -l
#SBATCH -t 10:00:00
#SBATCH -p med
#SBATCH --mem=30G
#SBATCH -o "Populations_GrayFox_259.out"

module load stacks

populations -P ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/ -O ~/GrayFox/Stacks_Outputs/GrayFoxAll_284/poprun_output -M Popmap.txt \
-W SNPlist.txt \
--fstats -k --smooth --sigma 150000 --bootstrap \
--structure --vcf --vcf_haplotypes --plink --radpainter --genepop --phylip_var --treemix \


#Removed 1786658 loci that did not pass sample/population constraints from 1817068 loci.
#Kept 30410 loci, composed of 2691200 sites; 0 of those sites were filtered, 44931 variant sites remained.
#    1911442 genomic sites, of which 749905 were covered by multiple loci (39.2%).
#Mean genotyped sites per locus: 88.47bp (stderr 0.07).

#Population summary statistics (more detail in populations.sumstats_summary.tsv):
#  East: 89.912 samples per locus; pi: 0.10845; all/variant/polymorphic sites: 2690468/44931/27381; private alleles: 1323
#  West: 155.26 samples per locus; pi: 0.19924; all/variant/polymorphic sites: 2690468/44931/43608; private alleles: 17550

#Population pair divergence statistics (more in populations.fst_summary.tsv and populations.phistats_summary.tsv):
#  East-West: mean Fst: 0.12347; mean Phi_st: 0.21228; mean Fst': 0.16672

##Summary Stats (Variant Sites)
#PopID	Private	Num_Indv	Var	StdErr	P	Var	StdErr	Obs_Het	Var	StdErr	Obs_Hom	Var	StdErr	Exp_Het	Var	StdErr	Exp_Hom	Var	StdErr	Pi	Var	StdErr	Fis	Var	StdErr
#East	1323	89.91151	30.21977	0.02593	0.92434	0.01601	0.0006	0.09833	0.02233	0.0007	0.90167	0.02233	0.0007	0.10784	0.0258	0.00076	0.89216	0.0258	0.00076	0.10845	0.02609	0.00076	0.04461	0.02165	0.02593
#West	17550	155.25895	88.6304	0.04441	0.86678	0.01618	0.0006	0.17555	0.01844	0.00064	0.82445	0.01844	0.00064	0.19859	0.02242	0.00071	0.80141	0.02242	0.00071	0.19924	0.02257	0.00071	0.09891	0.02892	0.04441

##Summary Stats (All Sites)
#PopID	Private	Sites	Variant_Sites	Polymorphic_Sites	%Polymorphic_Loci	Num_Indv	Var	StdErr	P	Var	StdErr	Obs_Het	Var	StdErr	Obs_Hom	Var	StdErr	Exp_Het	Var	StdErr	Exp_Hom	Var	StdErr	Pi	Var	StdErr	Fis	Var	StdErr
#East	1323	2690468	44931	27381	1.0177	93.18664	3.24194	0.0011	0.99874	0.00036	0.00001	0.00164	0.00053	0.00001	0.99836	0.00053	0.00001	0.0018	0.00062	0.00002	0.9982	0.00062	0.00002	0.00181	0.00063	0.00002	0.00074	0.00039	0.0011
#West	17550	2690468	44931	43608	1.62083	162.97991	10.09902	0.00194	0.99778	0.00056	0.00001	0.00293	0.00081	0.00002	0.99707	0.00081	0.00002	0.00332	0.00102	0.00002	0.99668	0.00102	0.00002	0.00333	0.00103	0.00002	0.00165	0.00064	0.00194

