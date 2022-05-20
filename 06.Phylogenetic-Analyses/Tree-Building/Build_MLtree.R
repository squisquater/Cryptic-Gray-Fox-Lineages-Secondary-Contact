library(ape, lib.loc ="/home/yote/R/x86_64-pc-linux-gnu-library/4.1")
library(phangorn)
library(phytools)

DNA = read.phyDat("bens77.fasta", format = "fasta", type = "DNA") #turns bens77.fasta from your wd into an object 'DNA', class phyDat
dm = dist.logDet(DNA) #computes pairwise distances of your sequences and turns that into an object 'dm'
tree = nj(dm) #Neighbor-joining tree using your pairwise distance object
fit = pml(tree, DNA) #computes the likelihood of a phylogenetic tree given a sequence alignment and makes that an object 'fit'
modelTest(fit) #tests to see what the best-fit nucleotide substitution model is. 

     Model  df     logLik     AIC         AICw    AICc        AICcw     BIC
1       JC 151 -1002777.8 2005858 0.000000e+00 2005858 0.000000e+00 2007328
2     JC+I 151 -1002777.8 2005858 0.000000e+00 2005858 0.000000e+00 2007328
3     JC+G 152 -1002788.6 2005881 0.000000e+00 2005882 0.000000e+00 2007361
4   JC+G+I 152 -1002788.6 2005881 0.000000e+00 2005882 0.000000e+00 2007361
5      F81 154 -1002750.8 2005810 0.000000e+00 2005810 0.000000e+00 2007309
6    F81+I 154 -1002750.8 2005810 0.000000e+00 2005810 0.000000e+00 2007309
7    F81+G 155 -1002761.6 2005833 0.000000e+00 2005834 0.000000e+00 2007342
8  F81+G+I 155 -1002761.6 2005833 0.000000e+00 2005833 0.000000e+00 2007342
9      K80 152  -959764.1 1919832 0.000000e+00 1919833 0.000000e+00 1921312
10   K80+I 152  -959764.1 1919832 0.000000e+00 1919833 0.000000e+00 1921312
11   K80+G 153  -959770.4 1919847 0.000000e+00 1919847 0.000000e+00 1921337
12 K80+G+I 153  -959770.4 1919847 0.000000e+00 1919847 0.000000e+00 1921337
13     HKY 155  -959756.9 1919824 0.000000e+00 1919824 0.000000e+00 1921333
14   HKY+I 155  -959756.9 1919824 0.000000e+00 1919824 0.000000e+00 1921333
15   HKY+G 156  -959763.2 1919838 0.000000e+00 1919839 0.000000e+00 1921357
16 HKY+G+I 156  -959763.2 1919838 0.000000e+00 1919839 0.000000e+00 1921357
17     SYM 156  -958847.4 1918007 2.729606e-45 1918007 2.750425e-45 1919526
18   SYM+I 156  -958847.4 1918007 2.729942e-45 1918007 2.750764e-45 1919526
19   SYM+G 157  -958853.6 1918021 2.020935e-48 1918022 2.031233e-48 1919550
20 SYM+G+I 157  -958853.6 1918021 2.020934e-48 1918022 2.031231e-48 1919550
21     GTR 159  -958742.5 1917803 4.979843e-01 1917803 4.979856e-01 1919351
22   GTR+I 159  -958742.5 1917803 5.009924e-01 1917803 5.009937e-01 1919351
23   GTR+G 160  -958748.4 1917817 5.121440e-04 1917817 5.108339e-04 1919375
24 GTR+G+I 160  -958748.4 1917817 5.110935e-04 1917817 5.097860e-04 1919375


fit1 = optim.pml(fit, optNni = TRUE, model = "GTR", optInv=T, optGamma=T) #optimizes the tree and makes it an object 'fit1'. You can specify a nucleotide substitution, here GTR (tied with GTR+I) fit best.  
bs = bootstrap.pml(fit1, bs = 100, optNni = TRUE) #performs 100 bootstrap replicates on your new optimized tree, 'fit1'. Took between 2.5 and 3 hours on cluster. 
write.tree(bs, file="bootstrap_100.tre") #writes tree in Newick format; actually it writes all 100 bootstrapped trees.
