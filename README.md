# Cryptic-Gray-Fox-Lineages-Secondary-Contact
Identifying the extent of secondary contact between cryptic gray fox lineages using a reduced representation GBS dataset

### Sample Info
* [GrayFoxSampleList.md](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/GrayFoxSampleList.md)
* [CanidSampleList.md](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/CanidSampleList.md)
### Raw data location 
* *Will include link to data repository with all fastqfiles once uploaded*

## 1. Data Processing
* Demultiplexed [demux.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/01.DataProcessing/demux.sh) 
* Trim reads [trim.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/01.DataProcessing/trim.sh)

## 2. Alignment & Initial SNP Calling
* Align to reference [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/align.sh)
* Stacks reference map SNP pipeline [refmap_PL_grayfox.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/refmap_PL_grayfox.sh)
* Run populations on output of above refmap pipeline [poprun_GrayFoxAll_284_maf0.02_moh0.6.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/poprun_GrayFoxAll_284_maf0.02_moh0.6.sh)

## 3. Initial SNP filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, we tested a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. The pipeline here represented the approach described in the manuscript.
  * Remove the lowest quality individuals (>90% of SNPs missing) [plinkfilter_mind0.9.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.9.sh)
  * Remove sites that were called in <80% of individuals [plinkfilter_geno0.2.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_geno0.2.sh)
  * Again remove lower quality individuals (>68% of SNPs missing) using a threshold based approach [plinkfilter_mind0.68.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.68.sh)

Use this final SNP dataset to generated a SNP-list from the .map file and used this for downstream analyses. 

## 4. Final SNP Dataset and Population Summary Stats
* Rerun populations using SNP list generated above and only individuals that passed quality filtering (n=259) [Populations_GrayFox_259.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/04.Population-Stats/Populations_GrayFox_259.sh)

## 5. Population Structure
### PCA
* Generate a PCA [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/PCA/plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh)

### fastStructure
* Recode binary plink files [plink_recodebinary.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fastStructure/plink_recodebinary.sh) 
* Run fastStructure for K=2:7 [fastStructure.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fastStructure/fastStructure.sh)
* Choose model complexity [chooseK.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fastStructure/chooseK.sh)

### fineRADstructure
* Calculate the co-ancenstry matrix using the radpainter file output by stacks [runradpainter.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Population-Structure/fineRADstructure/runradpainter.sh)
* Feed the co-ancestry matrix (filename_chunk.out) into the fineSTRUCTURE Markov chain Monte Carlo (MCMC) clustering algorithm [runfineradstructure.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Population-Structure/fineRADstructure/runfineradstructure.sh)
* Run the tree-building algorithm [runfineradstrutree.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Population-Structure/fineRADstructure/runfineradstrutree.sh)
* Plot the resulting tree using the R script [fineRADstructurePlot.R](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Population-Structure/fineRADstructure/fineRADstructurePlot.R) (note that this comes with the fineRADstructure program)
  * See [notes](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/tree/main/Population-Structure/fineRADstructure) regarding modifying parts of the R script
## 6. Phylogenetic Analyses
### Alignment & Initial SNP Calling
 * Alignment protocols were identical to those shown in the [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh) script, just using a different bamlist.
 * Stacks reference map SNP pipeline [ref_mapPL_Canidae_90.sh]
 * Run populations on output of above refmap pipeline [Populations_Canidae_90_minmac2moh0.6p15.sh]

### SNP filtering

###
 * Convert to fasta
 * Creat phydat object




