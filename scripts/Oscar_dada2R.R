# QIIME is dead
####################################

# Install dada2 through bioconductor

source("http://bioconductor.org/biocLite.R")
biocLite("dada2")


# FILE PARSING:

library(dada2); packageVersion("dada2")
# File parsing
pathF  <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR"
filtpathF <- file.path(pathF, "filtered") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR <- file.path(pathR, "filtered") # ...
fastqFs <- sort(list.files(pathF, pattern="fastq.gz"))
fastqRs <- sort(list.files(pathR, pattern="fastq.gz"))
if(length(fastqFs) != length(fastqRs)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS; truncQ=2 for Guillaume.
filterAndTrim(fwd=file.path(pathF, fastqFs), filt=file.path(filtpathF, fastqFs),
              rev=file.path(pathR, fastqRs), filt.rev=file.path(filtpathR, fastqRs),
              truncLen=c(280,200), maxEE=c(2,5), maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)


# File parsing
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



# INFERRING SEQUENCING VARIANTS:

# library(dada2); packageVersion("dada2")
# File parsing
filtpathF <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF/filtered"
filtpathR <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR/filtered"
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
seqtab <- makeSequenceTable(mergers)
write.table(seqtab, file="test_seqtab_sequencing_firstRound.txt")
saveRDS(seqtab, "/Users/megaptera/dada2/outputs/seqtab_firstRound.rds") # CHANGE ME to where you want sequence table saved


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
write.table(seqtab2, file="test_seqtab_sequencing_secondRound.txt")
saveRDS(seqtab2, "/Users/megaptera/dada2/outputs/seqtab_secondRound.rds") # CHANGE ME to where you want sequence table saved



# MERGING, REMOVING CHIMERAS AND ASSIGNING TAXONOMY CAN BE DONE TOGETHER AGAIN!

# library(dada2); packageVersion("dada2")
# Merge multiple runs (if necessary)
st1 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_secondRound.rds")
st2 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_firstRound.rds")
st.all <- mergeSequenceTables(st1, st2)

# Remove chimeras
seqtab.chim <- removeBimeraDenovo(st.all, method="consensus", multithread=TRUE)

# Assign taxonomy
tax <- assignTaxonomy(seqtab.chim, "/Users/megaptera/dada2/silva_nr_v128_train_set.fa", multithread=TRUE)
#taxa <- addSpecies(taxa, "Training/silva_species_assignment_v128.fa.gz")

taxa.print <- tax # Removing sequence rownames for display only
rownames(taxa.print) <- NULL
head(taxa.print)


# Write to disk
saveRDS(seqtab.chim, "/Users/megaptera/dada2/seqtab_final_chim.rds") # CHANGE ME to where you want sequence table saved
saveRDS(tax, "/Users/megaptera/dada2/tax_final.rds") # CHANGE ME ...


# NOW HAND IT OVER TO PHYLOSEQ!


library(phyloseq); packageVersion("phyloseq")
library(ggplot2); packageVersion("ggplot2")

# A list of R environment based tools for 16S rRNA gene data exploration, statistical analysis and visualization
# https://microsud.github.io/Tools-Microbiome-Anlaysis/

