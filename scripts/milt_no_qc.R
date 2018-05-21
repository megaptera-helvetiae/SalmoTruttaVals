

```{r eval=FALSE}
library(dada2); packageVersion("dada2")
# File parsing for the second round of sequencing
pathF  <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR"
filtpathF <- file.path(pathF, "filtered") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR <- file.path(pathR, "filtered") # ...
fastqFs <- sort(list.files(pathF, pattern="fastq.gz"))
fastqRs <- sort(list.files(pathR, pattern="fastq.gz"))
if(length(fastqFs) != length(fastqRs)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS
filterAndTrim(fwd=file.path(pathF, fastqFs), filt=file.path(filtpathF, fastqFs),
              rev=file.path(pathR, fastqRs), filt.rev=file.path(filtpathR, fastqRs),
              truncLen=c(280,200), maxEE=c(2,5), maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)
```


filtpathF <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF/filtered"
filtpathR <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR/filtered"
filtFs <- list.files(filtpathF, pattern="fastq.gz", full.names = TRUE)
filtRs <- list.files(filtpathR, pattern="fastq.gz", full.names = TRUE)
sample.names <- sapply(strsplit(basename(filtFs), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR <- sapply(strsplit(basename(filtRs), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names, sample.namesR)) stop("Forward and reverse files do not match.")
names(filtFs) <- sample.names
names(filtRs) <- sample.names
set.seed(1001)
# Learn forward error rates
errF <- learnErrors(filtFs, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR <- learnErrors(filtRs, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads
# plotErrors(errF, nominalQ=TRUE)
mergers <- vector("list", length(sample.names))
names(mergers) <- sample.names
for(sam in sample.names) {
  cat("Processing:", sam, "\n")
  derepF <- derepFastq(filtFs[[sam]])
  ddF <- dada(derepF, err=errF, multithread=TRUE)
  derepR <- derepFastq(filtRs[[sam]])
  ddR <- dada(derepR, err=errR, multithread=TRUE)
  merger <- mergePairs(ddF, derepF, ddR, derepR)
  mergers[[sam]] <- merger
}
rm(derepF); rm(derepR)
# Construct sequence table and remove chimeras
seqtab2 <- makeSequenceTable(mergers)
write.table(seqtab2, file="test_seqtab_sequencing_secondRound_Feb18.txt")
saveRDS(seqtab2, "/Users/megaptera/dada2/outputs/seqtab_secondRound_Feb18.rds") # CHANGE ME to where you want sequence table saved

biocLite("dada2")
```
```{r eval=FALSE}
# Merge multiple runs (if necessary)
st1 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_secondRound_Feb18.rds")
st2 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_firstRound_Feb18.rds")
st.all <- mergeSequenceTables(st1, st2)

# Assign taxonomy
tax <- assignTaxonomy(seqtab.chim, "/Users/megaptera/dada2/silva_nr_v132_train_set.fa", multithread=TRUE)

# Write to disk
saveRDS(seqtab.chim, "/Users/megaptera/dada2/outputs/seqtab_final_chim_Feb18.rds") # CHANGE ME to where you want sequence table saved
saveRDS(tax, "/Users/megaptera/dada2/outputs/tax_final_Feb18.rds") # CHANGE ME ...
```


