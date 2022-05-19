java -jar GBSX_v1.3.jar --Demultiplexer \
	-f1 /mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L3_GF3/GF3_S97_L003_R1_001.fastq.gz \
	-i /mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L3_GF3/GFRun3_Info_File.txt \
	-t 8 \
	-mb 1 \
	-gzip true \
	-o /mnt/iguana/MECU/Data_Shared_Iguana/20190918GrayFoxGBS2-3/Data/Project_BSSP_L3_GF3/Demultiplexed
  
  ## This is an example of the code I ran locally to demultiplex one of my hiseq libraries
  #  -f1 is the fastqfile with all the data
  # -i is the info file with three columns [Sample ID, barcode, RE(i.e. 'EcoT22I)]
  # -o is the output directory
