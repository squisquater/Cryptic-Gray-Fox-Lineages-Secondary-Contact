# Phylogenetic Analyses
This analysis utilized additional canid samples (Vulpes & Canis) to estimate the nuclear divergence time of the eastern and western Urocyon lineages.
## Alignment & Initial SNP Calling
 * Alignment protocols were identical to those shown in the [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh) script, just using a different bamlist.
 * Stacks reference map SNP pipeline [ref_mapPL_Canidae_90.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Alignment-SNPCalling/ref_mapPL_Canidae_90.sh)
 * Run populations on output of above refmap pipeline [Populations_Canidae_90_minmac2moh0.6p15.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Alignment-SNPCalling/Populations_Canidae_90_minmac2moh0.6p15.sh)

## SNP filtering
* Remove individuals with >70% missing data [plink_filter_mind0.7.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/SNP-filtering/plink_filter_mind0.7)
* Remove SNPs that were called in <95% of individuals (—geno 0.05)  [plink_filter_geno0.05.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/SNP-filtering/plink_filter_geno0.05.sh)

## Tree Building 
Note that we included 77 individuals in final dataset. See TableS2 in manuscript.
 * Convert to fasta file [ped_to_iupac_onestep_revised.pl](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Tree-Building/ped_to_iupac_onestep_revised.pl)
 * Run R Script to build ML Tree [Build_MLtree.R](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Tree-Building/Build_MLtree.R)
