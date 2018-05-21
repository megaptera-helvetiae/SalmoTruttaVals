library(dada2)
setwd("/Users/megaptera/dada2/outputs_March18")


# First we need to get the right libraries.
library("knitr")
#source("https://bioconductor.org/biocLite.R")
#biocLite("BiocStyle")
library("BiocStyle")
.cran_packages <- c("ggplot2", "gridExtra")
.bioc_packages <- c("dada2", "phyloseq", "DECIPHER", "phangorn")
.inst <- .cran_packages %in% installed.packages()
if(any(!.inst)) {
  install
  
  
  .packages(.cran_packages[!.inst])
}
.inst <- .bioc_packages %in% installed.packages()
if(any(!.inst)) {
  source("http://bioconductor.org/biocLite.R")
  biocLite(.bioc_packages[!.inst], ask = F)
}
# Load packages into session, and print package version
sapply(c(.cran_packages, .bioc_packages), require, character.only = TRUE)



alignment1 <- readRDS("/Users/megaptera/dada2/outputs_March18/alignment1_Feb18.rds")
alignment2 <- readRDS("/Users/megaptera/dada2/outputs_March18/alignment2_Feb18.rds")
alignment3 <- readRDS("/Users/megaptera/dada2/outputs_March18/alignment3_Feb18.rds")
alignment4 <- readRDS("/Users/megaptera/dada2/outputs_March18/alignment4_Feb18.rds")


# The phangorn R package is then used to construct a phylogenetic tree. Here we first construct a neighbor-joining tree, and then fit a GTR+G+I (Generalized time-reversible with Gamma rate variation) maximum likelihood tree using the neighbor-joining tree as a starting point.
phangAlign2 <- phyDat(as(alignment2, "matrix"), type="DNA")
dm2 <- dist.ml(phangAlign2)
treeNJ2 <- NJ(dm2) # Note, tip order != sequence order
fit2 = pml(treeNJ2, data=phangAlign2)
fitGTR2 <- update(fit2, k=4, inv=0.2)
fitGTR2 <- optim.pml(fitGTR2, model="GTR", optInv=TRUE, optGamma=TRUE,
                     rearrangement = "stochastic", control = pml.control(trace = 0))
saveRDS(fitGTR2, "/Users/megaptera/dada2/outputs_March18/fitGTR_tree2_Feb18.rds")

write.tree(fitGTR2$tree, file="my_second_Oskar_trees_tree2.tre")


phangAlign3 <- phyDat(as(alignment3, "matrix"), type="DNA")
dm3 <- dist.ml(phangAlign3)
treeNJ3 <- NJ(dm3) # Note, tip order != sequence order
fit3 = pml(treeNJ3, data=phangAlign3)
fitGTR3 <- update(fit3, k=4, inv=0.2)
fitGTR3 <- optim.pml(fitGTR3, model="GTR", optInv=TRUE, optGamma=TRUE,
                     rearrangement = "stochastic", control = pml.control(trace = 0))
saveRDS(fitGTR3, "/Users/megaptera/dada2/outputs_March18/fitGTR_tree3_Feb18.rds")

write.tree(fitGTR3$tree, file="my_second_Oskar_trees_tree3.tre")


phangAlign4 <- phyDat(as(alignment4, "matrix"), type="DNA")
dm4 <- dist.ml(phangAlign4)
treeNJ4 <- NJ(dm4) # Note, tip order != sequence order
fit4 = pml(treeNJ4, data=phangAlign4)
fitGTR4 <- update(fit4, k=4, inv=0.2)
fitGTR4 <- optim.pml(fitGTR4, model="GTR", optInv=TRUE, optGamma=TRUE,
                     rearrangement = "stochastic", control = pml.control(trace = 0))
saveRDS(fitGTR4, "/Users/megaptera/dada2/outputs_March18/fitGTR_tree4_Feb18.rds")

write.tree(fitGTR4$tree, file="my_second_Oskar_trees_tree4.tre")

detach("package:phangorn", unload=TRUE)

