# Cryptic-Gray-Fox-Lineages-Secondary-Contact
Identifying the presence and location of secondary contact between cryptic gray fox lineages using a reduced representation GBS dataset

## **Sample Info**
* [SampleList.md]

## Raw data location on Dingo
* Run1:/mnt/iguana/MECU/Data_Shared_Iguana/20190829GrayFoxGBS1/RawReads/GF1_S149_L006_R1_001.fastq.gz
  * InfoFile:/mnt/iguana/MECU/Data_Shared_Iguana/20190829GrayFoxGBS1/Demultiplexing/Info_File_Demultiplexing.txt 
* Run2:/mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L4_GF2/GF2_S98_L004_R1_001.fastq.gz
  * InfoFile:/mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L4_GF2/GFRun2_Info_File.txt
* Run3:/mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L3_GF3/GF3_S97_L003_R1_001.fastq.gz
  * InfoFile: /mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L3_GF3/GFRun3_Info_File.txt  

## **Data Processing**
* Demultiplexed [demux.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/demux.sh) 
* Trim reads [trim.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/DataProcessing/trim.sh)

*Alternate Data Processing Pipeline*
* Demultiplex + Clean and Generate Basic Library Stats [process_radtags.sh] (*This is presented as an option for an alt. pipeline that I did not pursue in the manuscript*)

## Alignment & Initial SNP Calling
* Align to reference [align.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/align.sh)
* Stacks reference map SNP pipline [refmap_PL_grayfox.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/refmap_PL_grayfox.sh)
* Run populations on output of above refmap pipeline [poprun_GrayFoxAll_284_maf0.02_moh0.6.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/Alignment-SNPcalling/poprun_GrayFoxAll_284_maf0.02_moh0.6.sh)

* Stacks de novo pipeline [denovo_PL_grayfox.sh] (*This is presented as an option for an alt. pipeline that I did not pursue in the manuscript*) See stacks manual for best practices on how to implement a denovo pipeline using the R80 method, which maximizes the number of polymorphic loci found in 80% of the individuals in your study.
 *  [Lost in parameter space: a road map forSTACKS](https://besjournals.onlinelibrary.wiley.com/doi/epdf/10.1111/2041-210X.12775) - Some helpful info from the older version of Stacks
 *  [RADstackshelpR](https://devonderaad.github.io/RADstackshelpR/index.html) is an R package that helps to determine the optimal parameters for assembling RAD loci de novo
 *  This pre-print is also a useful resource. [Population genomics analysis with RAD, reprised: STACKS 2](https://www.biorxiv.org/content/biorxiv/early/2021/11/04/2021.11.02.466953.full.pdf) 

## Initial SNP filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, I tested out a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. See methods outlines in the manuscript. The script shown here represents the filtering parameters that I opted to move forward with. I generate a final Gray Fox SNP whitelist from the .map file and used this for downstream analyses. [plink_GrayFoxAll_259_maf0.02_moh0.6_geno0.2_mind0.25.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/SNP-filtering/plink_maf0.02moh0.6_mind0.9_geno0.2_mind0.32.sh)

## Final SNP Dataset and Population Summary Stats
Rerun poopulations using SNP list generated above and only higher quality individuals (n=259) [Populations_GrayFox_259.sh]

