# Cryptic-Gray-Fox-Lineages-Secondary-Contact-
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
* Trim reads [trim.sh]
* Align to reference [align.sh]

## **Alternate Data Processing Pipeline**
* Demultiplex + Clean and Generate Basic Library Stats [process_radtags.sh[]

## Initial SNP Calling
* Stacks reference map pipline [refmap_PL_grayfox.sh]
* Stacks de novo pipeline [denovo_PL_grayfox.sh]

## SNP filtering and Population Summary Stats
link to Stacks populations filters --> http://catchenlab.life.illinois.edu/stacks/comp/populations.php
* Using data generated from the reference genome pipeline, apply basic SNP filters and generate population summary stats [refPL_poprun_GrayFox1_minmac2_maxhet0.6.sh]
* Using data generated from the denovo alignment pipeline, apply basic SNP filters and generate population summary stats [denovoPL_poprun_GrayFox1_minmac2_maxhet0.6.sh]
GF1_S149_L006_R1_001.fastq.gz
