library(dada2); packageVersion("dada2")
# File parsing for the first round of sequencing
pathF_round1  <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR_round1 <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR"
filtpathF_round1 <- file.path(pathF_round1, "filtered") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR_round1 <- file.path(pathR_round1, "filtered") # ...
fastqFs_round1 <- sort(list.files(pathF_round1, pattern="fastq.gz"))
fastqRs_round1 <- sort(list.files(pathR_round1, pattern="fastq.gz"))
if(length(fastqFs_round1) != length(fastqRs_round1)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS; truncQ=2 for Guillaume.
filterAndTrim(fwd=file.path(pathF_round1, fastqFs_round1), filt=file.path(filtpathF_round1, fastqFs_round1),
              rev=file.path(pathR_round1, fastqRs_round1), filt.rev=file.path(filtpathR_round1, fastqRs_round1),
              truncLen=c(280,200), maxEE=c(2,5), maxN=0, trimLeft = c(20,19),
              compress=TRUE, verbose=TRUE, multithread=TRUE)


# File parsing for the second round of sequencing
pathF_round2  <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF" # CHANGE ME to the directory containing the fastq files before unzipping.
pathR_round2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR"
filtpathF_round2 <- file.path(pathF_round2, "filtered") # Filtered forward files go into the pathF/filtered/ subdirectory
filtpathR_round2 <- file.path(pathR_round2, "filtered") # ...
fastqFs_round2 <- sort(list.files(pathF_round2, pattern="fastq.gz"))
fastqRs_round2 <- sort(list.files(pathR_round2, pattern="fastq.gz"))
if(length(fastqFs_round2) != length(fastqRs_round2)) stop("Forward and reverse files do not match.")
# Filtering: THESE PARAMETERS ARENT OPTIMAL FOR ALL DATASETS
filterAndTrim(fwd=file.path(pathF_round2, fastqFs_round2), filt=file.path(filtpathF_round2, fastqFs_round2),
              rev=file.path(pathR_round2, fastqRs_round2), filt.rev=file.path(filtpathR_round2, fastqRs_round2),
              truncLen=c(280,200), maxEE=c(2,5), maxN=0, trimLeft = c(20,19),
              compress=TRUE, verbose=TRUE, multithread=TRUE)


filtpathF_round1_filt <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathF/filtered"
filtpathR_round1_filt <- "/Users/megaptera/dada2/dada_firstRound/fastq/pathR/filtered"
filtFs_round1_filt <- list.files(filtpathF_round1_filt, pattern="fastq.gz", full.names = TRUE)
filtRs_round1_filt <- list.files(filtpathR_round1_filt, pattern="fastq.gz", full.names = TRUE)
sample.names_round1_filt <- sapply(strsplit(basename(filtFs_round1_filt), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR_round1_filt <- sapply(strsplit(basename(filtRs_round1_filt), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names_round1_filt, sample.namesR_round1_filt)) stop("Forward and reverse files do not match.")
names(filtFs_round1_filt) <- sample.names_round1_filt
names(filtRs_round1_filt) <- sample.names_round1_filt
set.seed(1111112)
# Learn forward error rates
errF_round1_filt <- learnErrors(filtFs_round1_filt, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_round1_filt <- learnErrors(filtRs_round1_filt, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/outputs_March18/errF_round1_filt.png")
plotErrors(errF_round1_filt, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/outputs_March18/errR_round1_filt.png")
plotErrors(errR_round1_filt, nominalQ=TRUE)
dev.off()

mergers_round1_filt <- vector("list", length(sample.names_round1_filt))
names(mergers_round1_filt) <- sample.names_round1_filt
for(sam in sample.names_round1_filt) {
  cat("Processing:", sam, "\n")
  derepF_round1_filt <- derepFastq(filtFs_round1_filt[[sam]])
  ddF_round1_filt <- dada(derepF_round1_filt, err=errF_round1_filt, multithread=TRUE)
  derepR_round1_filt <- derepFastq(filtRs_round1_filt[[sam]])
  ddR_round1_filt <- dada(derepR_round1_filt, err=errR_round1_filt, multithread=TRUE)
  merger_round1_filt <- mergePairs(ddF_round1_filt, derepF_round1_filt, ddR_round1_filt, derepR_round1_filt)
  mergers_round1_filt[[sam]] <- merger_round1_filt
}
rm(derepF_round1_filt); rm(derepR_round1_filt)

# Construct sequence table
seqtab_round1_filt <- makeSequenceTable(mergers_round1_filt)
write.table(seqtab_round1_filt, file="test_seqtab_sequencing_firstRound_March18.txt")
saveRDS(seqtab_round1_filt, "/Users/megaptera/dada2/outputs_March18/seqtab_firstRound_March18.rds") # CHANGE ME to where you want sequence table saved


filtpathF_round2_filt <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF/filtered"
filtpathR_round2_filt <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR/filtered"
filtFs_round2_filt <- list.files(filtpathF_round2_filt, pattern="fastq.gz", full.names = TRUE)
filtRs_round2_filt <- list.files(filtpathR_round2_filt, pattern="fastq.gz", full.names = TRUE)
sample.names_round2_filt <- sapply(strsplit(basename(filtFs_round2_filt), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR_round2_filt <- sapply(strsplit(basename(filtRs_round2_filt), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names_round2_filt, sample.namesR_round2_filt)) stop("Forward and reverse files do not match.")
names(filtFs_round2_filt) <- sample.names_round2_filt
names(filtRs_round2_filt) <- sample.names_round2_filt
set.seed(1111113)
# Learn forward error rates
errF_round2_filt <- learnErrors(filtFs_round2_filt, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_round2_filt <- learnErrors(filtRs_round2_filt, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/outputs_March18/errF_round2_filt.png")
plotErrors(errF_round2_filt, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/outputs_March18/errR_round2_filt.png")
plotErrors(errR_round2_filt, nominalQ=TRUE)
dev.off()


mergers_round2_filt <- vector("list", length(sample.names_round2_filt))
names(mergers_round2_filt) <- sample.names_round2_filt
for(sam in sample.names_round2_filt) {
  cat("Processing:", sam, "\n")
  derepF_round2_filt <- derepFastq(filtFs_round2_filt[[sam]])
  ddF_round2_filt <- dada(derepF_round2_filt, err=errF_round2_filt, multithread=TRUE)
  derepR_round2_filt <- derepFastq(filtRs_round2_filt[[sam]])
  ddR_round2_filt <- dada(derepR_round2_filt, err=errR_round2_filt, multithread=TRUE)
  merger_round2_filt <- mergePairs(ddF_round2_filt, derepF_round2_filt, ddR_round2_filt, derepR_round2_filt)
  mergers_round2_filt[[sam]] <- merger_round2_filt
}
rm(derepF_round2_filt); rm(derepR_round2_filt)
# Construct sequence table and remove chimeras
seqtab2_round2_filt <- makeSequenceTable(mergers_round2_filt)
write.table(seqtab2_round2_filt, file="test_seqtab_sequencing_secondRound_March18.txt")
saveRDS(seqtab2_round2_filt, "/Users/megaptera/dada2/outputs_March18/seqtab_secondRound_March18.rds") # CHANGE ME to where you want sequence table saved


# Merge multiple runs (if necessary)
st2 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_secondRound_March18.rds")
st1 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_firstRound_March18.rds")
st.all <- mergeSequenceTables(st1, st2)

# Remove chimeras
seqtab.chim <- removeBimeraDenovo(st.all, method="consensus", multithread=TRUE)
st1.nochim.nochim<- removeBimeraDenovo(st1, method="consensus", multithread=TRUE)
st2.nochim.nochim<- removeBimeraDenovo(st2, method="consensus", multithread=TRUE)






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
              truncLen=c(280,200), maxN=0,  trimLeft = c(20,19),
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
              truncLen=c(280,200), maxN=0, trimLeft = c(20,19),
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
set.seed(2222237)
# Learn forward error rates
errF_unclean_R1 <- learnErrors(filtFs_unclean_R1, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_unclean_R1 <- learnErrors(filtRs_unclean_R1, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/outputs_March18/errF_round1_unclean.png")
plotErrors(errF_unclean_R1, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/outputs_March18/errR_round1_unclean.png")
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
write.table(seqtab_unclean_R1, file="seqtab_sequencing_Round1_unclean_set-length.txt")
saveRDS(seqtab_unclean_R1, "/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round1_unclean.rds") # CHANGE ME to where you want sequence table saved


filtpathF_unclean_R2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathF/unclean"
filtpathR_unclean_R2 <- "/Users/megaptera/dada2/dada_secondRound/fastq/pathR/unclean"
filtFs_unclean_R2 <- list.files(filtpathF_unclean_R2, pattern="fastq.gz", full.names = TRUE)
filtRs_unclean_R2 <- list.files(filtpathR_unclean_R2, pattern="fastq.gz", full.names = TRUE)
sample.names_unclean_R2 <- sapply(strsplit(basename(filtFs_unclean_R2), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
sample.namesR_unclean_R2 <- sapply(strsplit(basename(filtRs_unclean_R2), "_"), `[`, 1) # Assumes filename = samplename_XXX.fastq.gz
if(!identical(sample.names_unclean_R2, sample.namesR_unclean_R2)) stop("Forward and reverse files do not match.")
names(filtFs_unclean_R2) <- sample.names_unclean_R2
names(filtRs_unclean_R2) <- sample.names_unclean_R2
set.seed(2222238)
# Learn forward error rates
errF_unclean_R2 <- learnErrors(filtFs_unclean_R2, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_unclean_R2 <- learnErrors(filtRs_unclean_R2, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

png(filename="/Users/megaptera/dada2/outputs_March18/errF_round2_unclean.png")
plotErrors(errF_unclean_R2, nominalQ=TRUE)
dev.off()

png(filename="/Users/megaptera/dada2/outputs_March18/errR_round2_unclean.png")
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
saveRDS(seqtab_unclean_R2, "/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round2_unclean.rds") # CHANGE ME to where you want sequence table saved

st3 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round1_unclean.rds")
st3.nochim.nochim<- removeBimeraDenovo(st3, method="consensus", multithread=TRUE)

st4 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round2_unclean.rds")
st4.nochim.nochim<- removeBimeraDenovo(st4, method="consensus", multithread=TRUE)














# Keep track of number of reads:
out1 <- filterAndTrim(fwd=file.path(pathF_round1, fastqFs_round1), filt=file.path(filtpathF_round1, fastqFs_round1),
                      rev=file.path(pathR_round1, fastqRs_round1), filt.rev=file.path(filtpathR_round1, fastqRs_round1),
                      truncLen=c(280,200), maxEE=c(2,5), maxN=0, trimLeft = c(20,19),
                      compress=TRUE, verbose=TRUE, multithread=TRUE)

track1 <- cbind(out1, rowSums(st1), rowSums(st1.nochim.nochim))
colnames(track1) <- c("input","filtered","tabled", "nonchim")
rownames(track1) <- sample.names_round1_filt
head(track1)


out2 <- filterAndTrim(fwd=file.path(pathF_round2, fastqFs_round2), filt=file.path(filtpathF_round2, fastqFs_round2),
                      rev=file.path(pathR_round2, fastqRs_round2), filt.rev=file.path(filtpathR_round2, fastqRs_round2),
                      truncLen=c(280,200), maxEE=c(2,5), maxN=0, trimLeft = c(20,19),
                      compress=TRUE, verbose=TRUE, multithread=TRUE)

track2 <- cbind(out2, rowSums(st2), rowSums(st2.nochim.nochim))
colnames(track2) <- c("input","filtered","tabled", "nonchim")
rownames(track2) <- sample.names_round2_filt
head(track2)

write.table(track1, file="round1_read_stats.txt")
write.table(track2, file="round2_read_stats.txt")



out_unclean2 <- filterAndTrim(fwd=file.path(pathF_unclean_R2, fastqFs_unclean_R2), filt=file.path(filtpathF_unclean_R2, fastqFs_unclean_R2),
                              rev=file.path(pathR_unclean_R2, fastqRs_unclean_R2), filt.rev=file.path(filtpathR_unclean_R2, fastqRs_unclean_R2),
                              truncLen=c(280,200), maxN=0, trimLeft = c(20,19),
                              compress=TRUE, verbose=TRUE, multithread=TRUE)

out_unclean1 <- filterAndTrim(fwd=file.path(pathF_unclean_R1, fastqFs_unclean_R1), filt=file.path(filtpathF_unclean_R1, fastqFs_unclean_R1),
                              rev=file.path(pathR_unclean_R1, fastqRs_unclean_R1), filt.rev=file.path(filtpathR_unclean_R1, fastqRs_unclean_R1),
                              truncLen=c(280,200), maxN=0,  trimLeft = c(20,19),
                              compress=TRUE, verbose=TRUE, multithread=TRUE)


st3 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round1_unclean.rds")
st3.nochim.nochim<- removeBimeraDenovo(st3, method="consensus", multithread=TRUE)

track3 <- cbind(out_unclean1, rowSums(st3), rowSums(st3.nochim.nochim))
colnames(track3) <- c("input","filtered","tabled", "nonchim")
rownames(track3) <- sample.names_unclean_R1

st4 <- readRDS("/Users/megaptera/dada2/outputs_March18/seqtab_sequencing_Round2_unclean.rds")
st4.nochim.nochim<- removeBimeraDenovo(st4, method="consensus", multithread=TRUE)

track4 <- cbind(out_unclean2, rowSums(st4), rowSums(st4.nochim.nochim))
colnames(track4) <- c("input","filtered","tabled", "nonchim")
rownames(track4) <- sample.names_unclean_R2

write.table(track3, file="round1_read_stats_unclean_length-set.txt") # was printed March 26 17:37
write.table(track4, file="round2_read_stats_unclean_length-set.txt") # was printed March 26 17:37