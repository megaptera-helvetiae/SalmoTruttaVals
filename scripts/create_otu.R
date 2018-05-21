At the end of the dada2 tutorial (http://benjjneb.github.io/dada2/tutorial.html), you end up with chimera removed variant tables which can be saved as .rds,  piped directly into phyloseq, or converted into biom tables for qiime.  In the scripts below, I'm saving one of my libraries as seqtabG_nochim.rds(1).  In the next step, I'm combining the seqtabs of all of my libraries into one large table (2).  In step 3, I am generating the fasta file that qiime1 used to call rep_set.fna.  Steps 4-6, I'm making the soon to be biom table.  

In R (dada2)
1)  >saveRDS(seqtabG.nochim, "/home/ubuntu/data/dada2_16/dada2_16_output/seqtabG_nochim.rds")
2)  > wild_nochim <- mergeSequenceTables(seqtabA.nochim, seqtabB.nochim, seqtabC.nochim, seqtabD.nochim, seqtabE.nochim, seqtabF.nochim, seqtabG.nochim)
3) > uniquesToFasta(getUniques(wild_nochim), fout = "/home/ubuntu/data/dada2_16/dada2_16_output/uniques_wild.fasta",ids=paste0("Seq",seq(length(getUniques(wild_nochim)))))
4) > wild.nochimt <- t(wild_nochim)
5) > wildt.nochimt <- cbind('#OTUID' = rownames(wild.nochimt), wild.nochimt)
6) > write.table(wildt.nochimt, "/home/ubuntu/data/dada2_16/dada2_16_output/wild_nochim.txt", sep='\t', row.names=FALSE, quote=FALSE)

At this point, you now have a tab separated text file with #OTUID in the top left corner cell (required to switch into .biom format), samples are going across the top and sequences go across the left column.  The left column has to be renamed from actual sequences to Seq1, Seq2, Seq3...etc. Now you can run qiime2.  biom is a module that comes with qiime2.  If you have qiime2 installed, you also have biom.

In qiime2
7) $ biom convert -i wild_nochim_rmseq.txt -o wild_nochim_rmseq.biom --table-type "OTU table" --to-hdf5
8) $ qiime tools import --input-path wild_nochim_rmseq.biom --type "FeatureTable[Frequency]" --output-path freq_table
9) $ qiime tools import --input-path uniques_wild.fasta --output-path rep_seqs-table --type "FeatureData[Sequence]"

It seems like a lot, but it works pretty well.  Let me know if you have any questions.

Cheers,
Betsy