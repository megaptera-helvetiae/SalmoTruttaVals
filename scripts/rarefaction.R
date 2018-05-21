#Harbor Exploratory 16S Analysis
#Phyloseq, ampvis, vegan
#Cassie Ettinger 

#libraries to load, not all will be used here
library(phyloseq)
library(ggplot2)
library(ampvis2)
library(vegan)

#get versions for the packages, that I am using
packageVersion("phyloseq") #1.20.0
packageVersion("ampvis2") #2.3.3

## Load into phyloseq

seqtab2 <- readRDS( "Harbor_seqtab_nochimeras.rds")
tax <- readRDS("Harbor_tax_silva128.rds")
mapping <- read.csv("SG_Harbor_Proximity_metadata.csv")

row.names(mapping) <- mapping$X.SampleID

ps <- phyloseq(otu_table(seqtab2, taxa_are_rows=FALSE),sample_data(mapping), tax_table(tax))

#remove to save space!
rm(mapping); rm(seqtab2); rm(tax)


### Rarefaction Curves ###
#Phyloseq does not have a wrapper for making rarefaction curves

## Found two options for making rarefaction curves

## Using ampvis2 to look at rarefaction curves

#took dada2 seqtab2, transposed and added taxonomy using Excel
#also added "OTU" to header for ASV's as is required by ampvis2
#read in otu table
myotutable <- read.csv("Harbor_seqtab_nochimeras_w_tax.csv", check.names = FALSE) 

#load data - using same mapping file for phyloseq
amp_test <- amp_load(otutable = myotutable, metadata = mapping)

#get summary of data!
amp_test

# generate rarefaction curves, step size of 1000 sequences; line drawn at 6000 sequence reads
amp_rarecurve(amp_test, color_by = "Substrate" )  + geom_vline(xintercept = 6000, linetype="dashed")

## Second (easier) option is a custom script from phyloseq_extended
#https://github.com/mahendra-mariadassou/phyloseq-extended/blob/master/R/richness.R

#defining function that is the wrapper
ggrare <- function(physeq, step = 10, label = NULL, color = NULL, plot = TRUE, parallel = FALSE, se = TRUE) {
  ## Args:
  ## - physeq: phyloseq class object, from which abundance data are extracted
  ## - step: Step size for sample size in rarefaction curves
  ## - label: Default `NULL`. Character string. The name of the variable
  ##          to map to text labels on the plot. Similar to color option
  ##          but for plotting text.
  ## - color: (Optional). Default ‘NULL’. Character string. The name of the
  ##          variable to map to colors in the plot. This can be a sample
  ##          variable (among the set returned by
  ##          ‘sample_variables(physeq)’ ) or taxonomic rank (among the set
  ##          returned by ‘rank_names(physeq)’).
  ##
  ##          Finally, The color scheme is chosen automatically by
  ##          ‘link{ggplot}’, but it can be modified afterward with an
  ##          additional layer using ‘scale_color_manual’.
  ## - color: Default `NULL`. Character string. The name of the variable
  ##          to map to text labels on the plot. Similar to color option
  ##          but for plotting text.
  ## - plot:  Logical, should the graphic be plotted.
  ## - parallel: should rarefaction be parallelized (using parallel framework)
  ## - se:    Default TRUE. Logical. Should standard errors be computed. 
  ## require vegan
  x <- as(otu_table(physeq), "matrix")
  if (taxa_are_rows(physeq)) { x <- t(x) }
  
  ## This script is adapted from vegan `rarecurve` function
  tot <- rowSums(x)
  S <- rowSums(x > 0)
  nr <- nrow(x)
  
  rarefun <- function(i) {
    cat(paste("rarefying sample", rownames(x)[i]), sep = "\n")
    n <- seq(1, tot[i], by = step)
    if (n[length(n)] != tot[i]) {
      n <- c(n, tot[i])
    }
    y <- rarefy(x[i, ,drop = FALSE], n, se = se)
    if (nrow(y) != 1) {
      rownames(y) <- c(".S", ".se")
      return(data.frame(t(y), Size = n, Sample = rownames(x)[i]))
    } else {
      return(data.frame(.S = y[1, ], Size = n, Sample = rownames(x)[i]))
    }
  }
  if (parallel) {
    out <- mclapply(seq_len(nr), rarefun, mc.preschedule = FALSE)
  } else {
    out <- lapply(seq_len(nr), rarefun)
  }
  df <- do.call(rbind, out)
  
  ## Get sample data 
  if (!is.null(sample_data(physeq, FALSE))) {
    sdf <- as(sample_data(physeq), "data.frame")
    sdf$Sample <- rownames(sdf)
    data <- merge(df, sdf, by = "Sample")
    labels <- data.frame(x = tot, y = S, Sample = rownames(x))
    labels <- merge(labels, sdf, by = "Sample")
  }
  
  ## Add, any custom-supplied plot-mapped variables
  if( length(color) > 1 ){
    data$color <- color
    names(data)[names(data)=="color"] <- deparse(substitute(color))
    color <- deparse(substitute(color))
  }
  if( length(label) > 1 ){
    labels$label <- label
    names(labels)[names(labels)=="label"] <- deparse(substitute(label))
    label <- deparse(substitute(label))
  }
  
  p <- ggplot(data = data, aes_string(x = "Size", y = ".S", group = "Sample", color = color))
  p <- p + labs(x = "Sample Size", y = "Species Richness")
  if (!is.null(label)) {
    p <- p + geom_text(data = labels, aes_string(x = "x", y = "y", label = label, color = color),
                       size = 4, hjust = 0)
  }
  p <- p + geom_line()
  if (se) { ## add standard error if available
    p <- p + geom_ribbon(aes_string(ymin = ".S - .se", ymax = ".S + .se", color = NULL, fill = color), alpha = 0.2)
  }
  if (plot) {
    plot(p)
  }
  invisible(p)
}


#plotting rarefaction curves, using step = 1000 reads
p = ggrare(ps, step = 1000, label = "X.SampleID", color = "Substrate") 

#drawing cut-off line at 10000 reads
p + geom_vline(xintercept = 10000, linetype="dashed")

#drawing cut-off line at 6000 reads
p + geom_vline(xintercept = 6000, linetype="dashed")

#drawing cut-off line at 20000 reads
p + geom_vline(xintercept = 20000, linetype="dashed")

#Rarefaction:
#It looks like ~20,000 reads would be a good choice to 
#get the "best" representation of communitities

#BUT it looks like ~6000 reads would allow us to keep all samples
#except the NC (which has 21 reads + going to run decontam first)

#A middle ground could be ~10,000 reads, where some samples are lost

## Let's look at library size to see distribution of reads across samples

## Look at library size
df <- as.data.frame(sample_data(ps)) # Put sample_data into a ggplot-friendly data.frame
df$LibrarySize <- sample_sums(ps)
df <- df[order(df$LibrarySize),]
df$Index <- seq(nrow(df))
ggplot(data=df, aes(x=Index, y=LibrarySize, color=Location)) + geom_point() + geom_hline(yintercept = 10000, linetype="dashed")

#20,000 cuts too many samples out of the analysis
#10,000 is OK
#6,000 is also OK + saves most samples
## So rarefy to ~6000?