# fineRADStructure

**Step 1:** Calculate the co-ancenstry matrix using the radpainter file output by stacks [runradpainter.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fineRADstructure/runradpainter.sh) \
**Step 2:** Feed the co-ancestry matrix (filename_chunk.out) into the fineSTRUCTURE Markov chain Monte Carlo (MCMC) clustering algorithm [runfineradstructure.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fineRADstructure/runfineradstructure.sh) \
**Step 3:** Run the tree-building algorithm [runfineradstrutree.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fineRADstructure/runfineradstrutree.sh) \
**Step 4:** Plot the resulting tree using the R script [fineRADstructurePlot.R](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/05.Population-Structure/fineRADstructure/fineRADstructurePlot.R) (note that this comes with the fineRADstructure program) 
  * In the script edit lines 30 to 32 to provide the names of the files you generated by running the analysis
    * chunkfile<-"filename_chunks.out" ## RADpainter 
    * output filemcmcfile<-"filename_chunks.mcmc.xml" ## finestructure mcmc file
    * treefile<-"filename_chunks.mcmcTree.xml" ## finestructure tree file
  * Also edit line 36 to provide the prefix (between quotes) for the pdf files generated by this scriptanalysisName <- "output_filename"; maxIndv <- 1000; maxPop<-1000
