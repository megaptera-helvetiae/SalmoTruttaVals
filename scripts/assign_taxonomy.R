library(dada2)
setwd("/Users/megaptera/dada2/outputs_March18")

# Merge multiple runs (if necessary)
st1 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_firstRound_March18.rds")
st2 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_secondRound_March18.rds")
st.all.clean <- mergeSequenceTables(st1, st2)

st3 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round1_unclean.rds")
st4 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round2_unclean.rds")
st.all.unclean <- mergeSequenceTables(st3, st4)

# Remove chimeras
seqtab.chim.clean <- removeBimeraDenovo(st.all.clean, method="consensus", multithread=TRUE)
st1.nochim.nochim<- removeBimeraDenovo(st1, method="consensus", multithread=TRUE)
st2.nochim.nochim<- removeBimeraDenovo(st2, method="consensus", multithread=TRUE)
st3.nochim.nochim<- removeBimeraDenovo(st3, method="consensus", multithread=TRUE)
st4.nochim.nochim<- removeBimeraDenovo(st4, method="consensus", multithread=TRUE)
seqtab.chim.unclean <- removeBimeraDenovo(st.all.unclean, method="consensus", multithread=TRUE)


tax_new <- assignTaxonomy(seqtab.chim.clean, "/Users/megaptera/dada2/silva_nr_v132_train_set.fa", multithread=TRUE) # done
tax_new_R1 <- assignTaxonomy(st1.nochim.nochim, "/Users/megaptera/dada2/silva_nr_v132_train_set.fa", multithread=TRUE) # done
tax_old_R1 <- assignTaxonomy(st3.nochim.nochim, "/Users/megaptera/dada2/silva_nr_v132_train_set.fa", multithread=TRUE) # done
tax_old_R2 <- assignTaxonomy(st4, "/Users/megaptera/dada2/silva_nr_v132_train_set.fa", multithread=TRUE)

tax_new_R1_green <- assignTaxonomy(st1.nochim.nochim, "/Users/megaptera/dada2/gg_13_8_train_set_97.fa", multithread=TRUE)
tax_old_R1_green <- assignTaxonomy(st3.nochim.nochim, "/Users/megaptera/dada2/gg_13_8_train_set_97.fa", multithread=TRUE)

tax_new_species <- addSpecies(tax_new, "/Users/megaptera/dada2/silva_species_assignment_v132.fa", multithread=TRUE)


# Write to disk
saveRDS(seqtab.chim.clean, "/Users/megaptera/dada2/outputs_March18/seqtab_chim_clean_March18.rds") 
saveRDS(tax_new, "/Users/megaptera/dada2/outputs_March18/tax_new_March18.rds")

saveRDS(st1.nochim.nochim, "/Users/megaptera/dada2/outputs_March18/st1_nochim_nochim_March18.rds") 
saveRDS(tax_new_R1, "/Users/megaptera/dada2/outputs_March18/tax_new_R1_March18.rds")

saveRDS(st3.nochim.nochim, "/Users/megaptera/dada2/outputs_March18/st3_nochim_nochim_March18.rds") 
saveRDS(tax_old_R1, "/Users/megaptera/dada2/outputs_March18/tax_old_R1_March18.rds")

saveRDS(st4, "/Users/megaptera/dada2/outputs_March18/st4_March18.rds") 
saveRDS(tax_old_R2, "/Users/megaptera/dada2/outputs_March18/tax_old_R2_March18.rds")

saveRDS(tax_new_R1_green, "/Users/megaptera/dada2/outputs_March18/tax_new_R1_green_March18.rds") 
saveRDS(tax_old_R1_green, "/Users/megaptera/dada2/outputs_March18/tax_old_R1_green_March18.rds")

saveRDS(tax_new_species, "/Users/megaptera/dada2/outputs_March18/tax_new_species-level_March18.rds")

# and continue with alignment:


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

seqs1 <- getSequences(seqtab.chim.clean)
names(seqs1) <- seqs1 # This propagates to the tip labels of the tree
alignment1 <- AlignSeqs(DNAStringSet(seqs1), anchor=NA,verbose=FALSE)
saveRDS(alignment1, "/Users/megaptera/dada2/outputs_March18/alignment1_Feb18.rds")


seqs2 <- getSequences(st1.nochim.nochim)
names(seqs2) <- seqs2 # This propagates to the tip labels of the tree
alignment2 <- AlignSeqs(DNAStringSet(seqs2), anchor=NA,verbose=FALSE)
saveRDS(alignment2, "/Users/megaptera/dada2/outputs_March18/alignment2_Feb18.rds")


seqs3 <- getSequences(st3.nochim.nochim)
names(seqs3) <- seqs3 # This propagates to the tip labels of the tree
alignment3 <- AlignSeqs(DNAStringSet(seqs3), anchor=NA,verbose=FALSE)
saveRDS(alignment3, "/Users/megaptera/dada2/outputs_March18/alignment3_Feb18.rds")

seqs4 <- getSequences(st4)
names(seqs4) <- seqs4 # This propagates to the tip labels of the tree
alignment4 <- AlignSeqs(DNAStringSet(seqs4), anchor=NA,verbose=FALSE)
saveRDS(alignment4, "/Users/megaptera/dada2/outputs_March18/alignment4_Feb18.rds")


# The phangorn R package is then used to construct a phylogenetic tree. Here we first construct a neighbor-joining tree, and then fit a GTR+G+I (Generalized time-reversible with Gamma rate variation) maximum likelihood tree using the neighbor-joining tree as a starting point.
phangAlign1 <- phyDat(as(alignment1, "matrix"), type="DNA")
dm1 <- dist.ml(phangAlign1)
treeNJ1 <- NJ(dm1) # Note, tip order != sequence order
fit1 = pml(treeNJ1, data=phangAlign1)
fitGTR1 <- update(fit1, k=4, inv=0.2)
fitGTR1 <- optim.pml(fitGTR1, model="GTR", optInv=TRUE, optGamma=TRUE,
                    rearrangement = "stochastic", control = pml.control(trace = 0))

saveRDS(fitGTR1, "/Users/megaptera/dada2/outputs_March18/fitGTR_tree1_Feb18.rds")


library(ape)

write.tree(fitGTR1$tree, file="my_second_Oskar_trees_tree1.tre")



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
saveRDS(fitGTR4, "/Users/megaptera/dada2/outputs_March18/fitGTR_tree3_Feb18.rds")

write.tree(fitGTR4$tree, file="my_second_Oskar_trees_tree4.tre")


