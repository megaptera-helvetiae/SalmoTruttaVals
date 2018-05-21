# Assign taxonomy

# Here are the names of the training sets:

# silva_nr_v132_train_set.fa
# gg_13_8_train_set_97.fa
# silva_species_assignment_v132.fa

# And here are the names of our datasets so far:
# /Users/megaptera/dada2/outputs_March18/seqtab_firstRound_March18.rds
# /Users/megaptera/dada2/outputs_March18/seqtab_secondRound_March18.rds
# /Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round1_unclean.rds
# /Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round2_unclean.rds


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

#tax_new_species <- addSpecies(tax_new, "/Users/megaptera/dada2/silva_species_assignment_v132.fa", multithread=TRUE)

dirty_sperm <- assignTaxonomy(st4, "/Users/megaptera/dada2/gg_13_8_train_set_97.fa", multithread=TRUE)


# Write to disk

# --> This is the whole dataset merged and blasted against SILVA.
saveRDS(seqtab.chim.clean, "/Users/megaptera/dada2/outputs_March18/seqtab_chim_clean_March18.rds") 
saveRDS(tax_new, "/Users/megaptera/dada2/outputs_March18/tax_new_March18.rds")

# --> This is run 1, cleaned and blasted against SILVA.
saveRDS(st1.nochim.nochim, "/Users/megaptera/dada2/outputs_March18/st1_nochim_nochim_March18.rds") 
saveRDS(tax_new_R1, "/Users/megaptera/dada2/outputs_March18/tax_new_R1_March18.rds")

# --> This is run 1, dirty and blasted against SILVA.
saveRDS(st3.nochim.nochim, "/Users/megaptera/dada2/outputs_March18/st3_nochim_nochim_March18.rds") 
saveRDS(tax_old_R1, "/Users/megaptera/dada2/outputs_March18/tax_old_R1_March18.rds")

# --> This is run 2, unclean and no chimera check; and blasted against SILVA.
saveRDS(tax_old_R2, "/Users/megaptera/dada2/outputs_March18/tax_old_R2_March18.rds")

# --> This is run 1, cleaned and blasted against GREENGENES.
saveRDS(tax_new_R1_green, "/Users/megaptera/dada2/outputs_March18/tax_new_R1_green_March18.rds") 

# --> This is run 1, dirty and blasted against GREENGENES.
saveRDS(tax_old_R1_green, "/Users/megaptera/dada2/outputs_March18/tax_old_R1_green_March18.rds")

# --> This is the whole dataset merged and blasted against SILVA, down to species level.
#saveRDS(tax_new_species, "/Users/megaptera/dada2/outputs_March18/tax_new_species-level_March18.rds")

# --> This is run 2, unclean and no chimera check; and blasted against Greengenes.
saveRDS(dirty_sperm, "/Users/megaptera/dada2/outputs_March18/tax_dirty_sperm.rds")