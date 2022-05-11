# Cryptic-Gray-Fox-Lineages-Secondary-Contact
Identifying the presence and location of secondary contact between cryptic gray fox lineages using a reduced representation GBS dataset

## **Sample Info**
* [SampleList.md]

## Raw data location 
*

## **Data Processing**
* Demultiplexed [demux.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/demux.sh) 
* Trim reads [trim.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/trim.sh)

## Alignment & Initial SNP Calling
* Align to reference [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh)
* Stacks reference map SNP pipeline [refmap_PL_grayfox.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/refmap_PL_grayfox.sh)
* Run populations on output of above refmap pipeline [poprun_GrayFoxAll_284_maf0.02_moh0.6.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/poprun_GrayFoxAll_284_maf0.02_moh0.6.sh)

## Initial SNP filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, I tested out a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. See methods outlines in the manuscript. The script shown here represents the filtering parameters that I opted to move forward with. I generate a final Gray Fox SNP whitelist from the .map file and used this for downstream analyses. [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/SNP-filtering/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32.sh)
*Note that this file makes it look like I used a --mind 0.25 filter as opposed to --min 0.32 as reported, but that was a typo on my end I didn't realize until later. I didn't go back and change it to avoid messing with any downstream filepaths.*

## Final SNP Dataset and Population Summary Stats
* Rerun populations using SNP list generated above and only higher quality individuals (n=259) [Populations_GrayFox_259.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/PopStats/Populations_GrayFox_259.sh)
* Rerun populations using SNP list generated above but selecting a single SNP per locus to reduce possible linkage between sites [Populations_GrayFox_259_unlinked.sh]

## Population Structure
### PCA
* for the full snp datatset [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh]
* for the pruned snp dataset [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.sh]

### fastStructure
#### fullSNPset
* Recode binary plink files [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_recodebinary.sh] 
* Run fastStructure for K=2:7 [fastStructure_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh]
* Choose model complexity [chooseK.sh]
#### prunedSNPset
* Recode binary plink files [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned_recodebinary.sh] 
* Run fastStructure for K=2:7 [fastStructure_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_pruned.sh]
* Choose model complexity [chooseK_pruned.sh]

### fineRADstructure
*The power in this analysis comes from haplotype data so we'll move forward from here with just the unpruned dataset (~45k SNPs)*

## Hybrid Simulations
Simulating varying hybrid classes based on 69 fixed loci and summarzing resulting ancestry proportions and heterozygosities.
* Simulation Script [HybridSimScript_GF.R]
* Triangle Plotting Scripts [TrianglePLots.R]

## Phylogenetic Analyses
### Alignment & Initial SNP Calling
 * Alignment protocols were identical to those shown in the [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh) script, I just using a different bamlist
 * Stacks reference map SNP pipeline [ref_mapPL_Canidae_90.sh]
 * Run populations on output of above refmap pipeline [Populations_Canidae_90_minmac2moh0.6p15.sh]
### SNP filtering
### 
 * Convert to fasta
 * Creat phydat object

### Treemix



