# SNP Filtering
You can check out details on the Stacks populations filters [here]( http://catchenlab.life.illinois.edu/stacks/comp/populations.php) 
* Using data generated from the reference genome pipeline, we tested a variety of filtering approaches to maximimze the number of sites and individuals while removing low quality data. The pipeline here represented the approach described in the manuscript. \
\
  **Step 1:** Remove the lowest quality individuals (>90% of SNPs missing) [plinkfilter_mind0.9.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.9.sh) \
  **Step 2:** Remove sites that were called in <80% of individuals [plinkfilter_geno0.2.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_geno0.2.sh) \
  **Step 3:** Again remove lower quality individuals (>32% of SNPs missing) using a threshold based approach [plinkfilter_mind0.32.sh](https://github.com/squisquater/Cryptic-Gray-Fox-Lineages-Secondary-Contact/blob/main/03.SNP-filtering/plinkfilter_mind0.32.sh)
