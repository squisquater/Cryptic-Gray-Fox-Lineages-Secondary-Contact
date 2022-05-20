# Cryptic-Gray-Fox-Lineages-Secondary-Contact
### *Genomic analyses of gray fox lineages suggest ancient divergence and gene flow across a zone of secondary contact in the Southern Great Plains* 


<img align="right" src="/GrayFox.png" width="400"> 

## Sample Info
* [GrayFoxSampleList.md](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/GrayFoxSampleList.md)
* [CanidSampleList.md](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/CanidSampleList.md)
## Raw data location 
* *Will include link to data repository with all fastqfiles once uploaded*

## 01. Data Processing
* Demultiplex reads [demux.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/01.DataProcessing/demux.sh) 
* Trim reads [trim.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/01.DataProcessing/trim.sh)

## 02. Alignment & Initial SNP Calling
* Align to reference [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/align.sh)
* Stacks reference map SNP pipeline [refmap_PL_grayfox.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/refmap_PL_grayfox.sh)
* Run populations on output of above refmap pipeline [poprun_GrayFoxAll_284_maf0.02_moh0.6.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/02.Alignment-SNPcalling/poprun_GrayFoxAll_284_maf0.02_moh0.6.sh)

## 03. Initial SNP filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, we tested a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. The pipeline here represents the approach described in the manuscript.
  * Remove the lowest quality individuals (>90% of SNPs missing) [plinkfilter_mind0.9.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.9.sh)
  * Remove sites that were called in <80% of individuals [plinkfilter_geno0.2.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_geno0.2.sh)
  * Again remove lower quality individuals (>32% of SNPs missing) using a threshold based approach [plinkfilter_mind0.32.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.32.sh)

Use this final SNP dataset (44,931 sites) to generated a SNP list from the .map file and use this for downstream analyses. 

## 04. Final SNP Dataset and Population Summary Stats
* Rerun populations using SNP list generated above and only individuals that passed quality filtering (n=259) [Populations_GrayFox_259.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/04.Population-Stats/Populations_GrayFox_259.sh)

## 05. Population Structure
### PCA
* Generate a PCA [plink_PCA.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/PCA/plink_PCA.sh)

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
## 06. Phylogenetic Analyses
This analysis utilized additional canid samples (*Vulpes* & *Canis*) to estimate the nuclear divergence time of the eastern and western Urocyon lineages.
### Alignment & Initial SNP Calling
 * Alignment protocols were identical to those shown in the [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh) script, just using a different bamlist.
 * Stacks reference map SNP pipeline [ref_mapPL_Canidae_90.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Alignment-SNPCalling/ref_mapPL_Canidae_90.sh)
 * Run populations on output of above refmap pipeline [Populations_Canidae_90_minmac2moh0.6p15.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Alignment-SNPCalling/Populations_Canidae_90_minmac2moh0.6p15.sh)

### SNP filtering
* Remove individuals with >70% missing data [plink_filter_mind0.7.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/SNP-filtering/plink_filter_mind0.7)
* Remove SNPs that were called in <95% of individuals (—geno 0.05)  [plink_filter_geno0.05.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/SNP-filtering/plink_filter_geno0.05.sh)

### Tree Building 
Note that we included 77 individuals in final dataset. See TableS2 in manuscript.
 * Convert to fasta file [ped_to_iupac_onestep_revised.pl](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Tree-Building/ped_to_iupac_onestep_revised.pl)
 * Run R Script to build ML Tree [Build_MLtree.R](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/06.Phylogenetic-Analyses/Tree-Building/Build_MLtree.R)




