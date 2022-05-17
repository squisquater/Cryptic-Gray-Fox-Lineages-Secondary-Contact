# Cryptic-Gray-Fox-Lineages-Secondary-Contact
Identifying the presence and location of secondary contact between cryptic gray fox lineages using a reduced representation GBS dataset

### Sample Info
* [GrayFoxSampleList.md]

### Raw data location 
*

## 1. Data Processing
* Demultiplexed [demux.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/demux.sh) 
* Trim reads [trim.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/trim.sh)

## 2. Alignment & Initial SNP Calling
* Align to reference [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh)
* Stacks reference map SNP pipeline [refmap_PL_grayfox.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/refmap_PL_grayfox.sh)
* Run populations on output of above refmap pipeline [poprun_GrayFoxAll_284_maf0.02_moh0.6.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/poprun_GrayFoxAll_284_maf0.02_moh0.6.sh)

## 3. Initial SNP filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, I tested out a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. See methods outlined in the manuscript. The script shown here represents the filtering parameters that I opted to move forward with. [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.32.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/SNP-filtering/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32.sh)

I then generated a final Gray Fox SNP whitelist from the .map file and used this for downstream analyses. 


## 4. Final SNP Dataset and Population Summary Stats
* Rerun populations using SNP list generated above and only individuals that passed quality filtering (n=259) [Populations_GrayFox_259.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/PopStats/Populations_GrayFox_259.sh)

## 5. Population Structure
### PCA
* for the full snp datatset [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh]

### fastStructure
* Recode binary plink files [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25_recodebinary.sh] 
* Run fastStructure for K=2:7 [fastStructure_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh]
* Choose model complexity [chooseK.sh]

### fineRADstructure



## 6. Phylogenetic Analyses
### Alignment & Initial SNP Calling
 * Alignment protocols were identical to those shown in the [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh) script, just using a different bamlist.
 * Stacks reference map SNP pipeline [ref_mapPL_Canidae_90.sh]
 * Run populations on output of above refmap pipeline [Populations_Canidae_90_minmac2moh0.6p15.sh]

### SNP filtering

###
 * Convert to fasta
 * Creat phydat object




