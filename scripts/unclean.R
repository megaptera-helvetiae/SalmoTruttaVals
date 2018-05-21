library(dada2); packageVersion("dada2")
# File parsing for the first round of sequencing
pathF_unclean_R1  <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR_unclean_R1 <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR"
filtpathF_unclean_R1 <- file.path(pathF_unclean_R1, "unclean") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR_unclean_R1 <- file.path(pathR_unclean_R1, "unclean") # ...
fastqFs_unclean_R1 <- sort(list.files(pathF_unclean_R1, pattern="fastq.gz"))
fastqRs_unclean_R1 <- sort(list.files(pathR_unclean_R1, pattern="fastq.gz"))
if(length(fastqFs_unclean_R1) != length(fastqRs_unclean_R1)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS; truncQ=2 for Guillaume.
filterAndTrim(fwd=file.path(pathF_unclean_R1, fastqFs_unclean_R1), filt=file.path(filtpathF_unclean_R1, fastqFs_unclean_R1),
              rev=file.path(pathR_unclean_R1, fastqRs_unclean_R1), filt.rev=file.path(filtpathR_unclean_R1, fastqRs_unclean_R1),
              maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)

out_unclean1 <- filterAndTrim(fwd=file.path(pathF_unclean_R1, fastqFs_unclean_R1), filt=file.path(filtpathF_unclean_R1, fastqFs_unclean_R1),
              rev=file.path(pathR_unclean_R1, fastqRs_unclean_R1), filt.rev=file.path(filtpathR_unclean_R1, fastqRs_unclean_R1),
              maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)


# File parsing for the second round of sequencing
pathF_unclean_R2  <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR_unclean_R2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR"
filtpathF_unclean_R2 <- file.path(pathF_unclean_R2, "unclean") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR_unclean_R2 <- file.path(pathR_unclean_R2, "unclean") # ...
fastqFs_unclean_R2 <- sort(list.files(pathF_unclean_R2, pattern="fastq.gz"))
fastqRs_unclean_R2 <- sort(list.files(pathR_unclean_R2, pattern="fastq.gz"))
if(length(fastqFs_unclean_R2) != length(fastqRs_unclean_R2)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS
filterAndTrim(fwd=file.path(pathF_unclean_R2, fastqFs_unclean_R2), filt=file.path(filtpathF_unclean_R2, fastqFs_unclean_R2),
              rev=file.path(pathR_unclean_R2, fastqRs_unclean_R2), filt.rev=file.path(filtpathR_unclean_R2, fastqRs_unclean_R2),
              maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)

out_unclean2 <- filterAndTrim(fwd=file.path(pathF_unclean_R2, fastqFs_unclean_R2), filt=file.path(filtpathF_unclean_R2, fastqFs_unclean_R2),
              rev=file.path(pathR_unclean_R2, fastqRs_unclean_R2), filt.rev=file.path(filtpathR_unclean_R2, fastqRs_unclean_R2),
              maxN=0,
              compress=TRUE, verbose=TRUE, multithread=TRUE)


filtpathF_unclean_R1 <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF/unclean"
filtpathR_unclean_R1 <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR/unclean"
filtFs_unclean_R1 <- list.files(filtpathF_unclean_R1, pattern="fastq.gz", full.names = TRUE)
filtRs_unclean_R1 <- list.files(filtpathR_unclean_R1, pattern="fastq.gz", full.names = TRUE)
sample.names_unclean_R1 <- sapply(strsplit(basename(filtFs_unclean_R1), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR_unclean_R1 <- sapply(strsplit(basename(filtRs_unclean_R1), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names_unclean_R1, sample.namesR_unclean_R1)) stop("Forward and reverse files do not match.")
names(filtFs_unclean_R1) <- sample.names_unclean_R1
names(filtRs_unclean_R1) <- sample.names_unclean_R1
set.seed(2222227)
# Learn forward error rates
errF_unclean_R1 <- learnErrors(filtFs_unclean_R1, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_unclean_R1 <- learnErrors(filtRs_unclean_R1, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/errF_round1_unclean.png")
plotErrors(errF_unclean_R1, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/errR_round1_unclean.png")
plotErrors(errR_unclean_R1, nominalQ=TRUE)
dev.off()

mergers_unclean_R1 <- vector("list", length(sample.names_unclean_R1))
names(mergers_unclean_R1) <- sample.names_unclean_R1
for(sam in sample.names_unclean_R1) {
  cat("Processing:", sam, "\n")
  derepF_unclean_R1 <- derepFastq(filtFs_unclean_R1[[sam]])
  ddF_unclean_R1 <- dada(derepF_unclean_R1, err=errF_unclean_R1, multithread=TRUE)
  derepR_unclean_R1 <- derepFastq(filtRs_unclean_R1[[sam]])
  ddR_unclean_R1 <- dada(derepR_unclean_R1, err=errR_unclean_R1, multithread=TRUE)
  merger_unclean_R1 <- mergePairs(ddF_unclean_R1, derepF_unclean_R1, ddR_unclean_R1, derepR_unclean_R1)
  mergers_unclean_R1[[sam]] <- merger_unclean_R1
}
rm(derepF_unclean_R1); rm(derepR_unclean_R1)
# Construct sequence table and remove chimeras
seqtab_unclean_R1 <- makeSequenceTable(mergers_unclean_R1)
write.table(seqtab_unclean_R1, file="seqtab_sequencing_Round1_unclean.txt")
saveRDS(seqtab_unclean_R1, "/Users/megaptera/dada2/outputs/seqtab_sequencing_Round1_unclean.rds") # CHANGE ME to where you want sequence table saved


filtpathF_unclean_R2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF/unclean"
filtpathR_unclean_R2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR/unclean"
filtFs_unclean_R2 <- list.files(filtpathF_unclean_R2, pattern="fastq.gz", full.names = TRUE)
filtRs_unclean_R2 <- list.files(filtpathR_unclean_R2, pattern="fastq.gz", full.names = TRUE)
sample.names_unclean_R2 <- sapply(strsplit(basename(filtFs_unclean_R2), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR_unclean_R2 <- sapply(strsplit(basename(filtRs_unclean_R2), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names_unclean_R2, sample.namesR_unclean_R2)) stop("Forward and reverse files do not match.")
names(filtFs_unclean_R2) <- sample.names_unclean_R2
names(filtRs_unclean_R2) <- sample.names_unclean_R2
set.seed(2222228)
# Learn forward error rates
errF_unclean_R2 <- learnErrors(filtFs_unclean_R2, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_unclean_R2 <- learnErrors(filtRs_unclean_R2, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/errF_round2_unclean.png")
plotErrors(errF_unclean_R2, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/errR_round2_unclean.png")
plotErrors(errR_unclean_R2, nominalQ=TRUE)
dev.off()

mergers_unclean_R2 <- vector("list", length(sample.names_unclean_R2))
names(mergers_unclean_R2) <- sample.names_unclean_R2
for(sam in sample.names_unclean_R2) {
  cat("Processing:", sam, "\n")
  derepF_unclean_R2 <- derepFastq(filtFs_unclean_R2[[sam]])
  ddF_unclean_R2 <- dada(derepF_unclean_R2, err=errF_unclean_R2, multithread=TRUE)
  derepR_unclean_R2 <- derepFastq(filtRs_unclean_R2[[sam]])
  ddR_unclean_R2 <- dada(derepR_unclean_R2, err=errR_unclean_R2, multithread=TRUE)
  merger_unclean_R2 <- mergePairs(ddF_unclean_R2, derepF_unclean_R2, ddR_unclean_R2, derepR_unclean_R2)
  mergers_unclean_R2[[sam]] <- merger_unclean_R2
}
rm(derepF_unclean_R2); rm(derepR_unclean_R2)
# Construct sequence table and remove chimeras
seqtab_unclean_R2 <- makeSequenceTable(mergers_unclean_R2)
write.table(seqtab_unclean_R2, file="seqtab_sequencing_Round2_unclean.txt")
saveRDS(seqtab_unclean_R2, "/Users/megaptera/dada2/outputs/seqtab_sequencing_Round2_unclean.rds") # CHANGE ME to where you want sequence table saved

st3 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_sequencing_Round1_unclean.rds")
st3.nochim.nochim<- removeBimeraDenovo(st3, method="consensus", multithread=TRUE)

track3 <- cbind(out_unclean1, rowSums(st3), rowSums(st3.nochim.nochim))
colnames(track3) <- c("input","filtered","tabled", "nonchim")
rownames(track3) <- sample.names_unclean_R1

st4 <- readRDS("/Users/megaptera/dada2/outputs/seqtab_sequencing_Round2_unclean.rds")
st4.nochim.nochim<- removeBimeraDenovo(st4, method="consensus", multithread=TRUE)

track4 <- cbind(out_unclean2, rowSums(st4), rowSums(st4.nochim.nochim))
colnames(track4) <- c("input","filtered","tabled", "nonchim")
rownames(track4) <- sample.names_unclean_R2

write.table(track3, file="round1_read_stats_unclean.txt")
write.table(track4, file="round2_read_stats_unclean.txt")