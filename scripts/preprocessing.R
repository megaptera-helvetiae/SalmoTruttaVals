# Some general commands for preprocessing of my reads
########################################################

# GlobaPatterns is the starting dataset

# Remove taxa not seen more than 3 times in at least 20% of the samples. This protects against an OTU with small mean & trivially large C.V.

# Transform dataset to relative abundance
GPr  = transform_sample_counts(GlobalPatterns, function(x) x / sum(x))

# Keep only OTUs with a mean greater distance than 10^5
GPfr = filter_taxa(GPr, function(x) mean(x) > 1e-5, TRUE)

# Choose only data from a particular phylum
GP.chl = subset_taxa(GlobalPatterns, Phylum=="Chlamydiae")

# Remove samples with less than 20 reads
GP.chl = prune_samples(sample_sums(GP.chl)>=20, GP.chl)

# Phyloseq can also do merging.
# For example, merge the first 5 OTUs in the Chlamydiae-only dataset
GP.chl.merged = merge_taxa(GP.chl, taxa_names(GP.chl)[1:5])

# The following code demonstrates how to agglomerate the “Bacteroidetes-only” dataset (called gpsfb) at the taxonomic rank of Family, and create an annotated tree of the result.
gpsfbg = tax_glom(gpsfb, "Family")
plot_tree(gpsfbg, color="SampleType", shape="Class", size="abundance")

# Remove taxa not seen more than 3 times in at least 20% of the samples. This protects against an OTU with small mean & trivially large C.V.
GP = filter_taxa(GlobalPatterns, function(x) sum(x > 3) > (0.2*length(x)), TRUE)

# Defining new variables. This might be super useful for me:
# For example, define a human versus non-human categorical variable, and add this new variable to sample data:

sample_data(GP)$human = factor( get_variable(GP, "SampleType") %in% c("Feces", "Mock", "Skin", "Tongue") )

# Standardizing abundance
total = median(sample_sums(GP))
standf = function(x, t=total) round(t * (x / sum(x)))
gps = transform_sample_counts(GP, standf)







