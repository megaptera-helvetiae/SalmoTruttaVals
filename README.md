# Trun

# Vorderrhein
This is the amplicon data analysis of my early SNF project at a hatchery in Trun, Switzerland. Briefly, I washed fish sperm with antibiotics and then used it to fertilize eggs. I am contrasting offspring of the same parents that originated from washed sperm with offspring that originated from 'natural' sperm.

## I am reaching the following landmarks

1) Preprocessing of reads
&nbsp;

- I did the first quality control with dada2
- I did two rounds of sequencing so I performed two different rounds of quality control before merging the two datasets. 
- The following flags were used for quality control: the following flags for filterAndTrim(): truncLen=c(280,200), maxEE=c(2,5), maxN=0
- To see the effect of these flags, I also ran a second, more relaxed quality control: truncLen=c(280,200), maxN=0
- As a reference for the reads I used SILVA (silva_nr_v132_train_set.fa). 
- However, I also used GREENGENES because this is the reference I had used during my PhD and I wanted to compare my 'current' figh egg bacteria to the ones of previous projects (gg_13_8_train_set_97.fa).
&nbsp;

The script for this was named: "Trun_seq-prep.Rmd"
--> All scripts here are RMarkdown script and can be found in the directory *RMarkdown*

&nbsp;
&nbsp;

2) Analysis of the effects of treatment - Sequencing Run 1 / Vals
&nbsp;

- Using only the reads from the first sequencing run I made a subset of embryos in both treatments (sham-treatment & antibacterial cocktail)
- Several Ordination metrices to visualize the data
- DESeq2 to find statistically significant differences between bacteria on embryos in the two different treatment groups
&nbsp;

The script for this was named: "Vals_APS_Run1_Analysis.Rmd"

&nbsp;
&nbsp;

3) Analysis of the effects of treatment - Sequencing Run 1 / Tavanasa
&nbsp;

- Using only the reads from the first sequencing run I made a subset of embryos in both treatments (sham-treatment & Virkon S)
- Several Ordination metrices to visualize the data
- DESeq2 to find statistically significant differences between bacteria on embryos in the two different treatment groups
&nbsp;

The script for this was named: "Tavanasa_APS_Run1_Analysis.Rmd"

&nbsp;
&nbsp;

4) Analysis of the effects of treatment - Both Sequencing Runs Combined / Vals
&nbsp;

- After qc and separate error profiling, data from both sequencing runs were combined.
- I made a subset of embryos in both treatments (sham-treatment & antibacterial cocktail)
- Several Ordination metrices to visualize the data
- DESeq2 to find statistically significant differences between bacteria on embryos in the two different treatment groups --> Here I controlled for sequencing run with: diagdds = phyloseq_to_deseq2(kostic.Vals, ~ Sequencing + Treatment)
&nbsp;

The script for this was named: "whole_dataset_Vals_APS_analysis.Rmd"

&nbsp;
&nbsp;


5) Is there vertical transmission??? - Both Sequencing Runs Combined / Vals
&nbsp;

- For each male in Vals and Tavanasa (n=12) look for differences in offspring (combined large dataset and DESeq). Then search for these sequences in milt.
- I ran DESeq2 with Sequencing Run and Treatment for each family/male.
- Then I plotted the significantly different bacteria in all milt samples (barplot).

The script for this was named: "vert_trans_Vals.Rmd"

&nbsp;
&nbsp;


6) Characterize milt bacteria

- 

The script for this was named: "milt.Rmd"

&nbsp;
&nbsp;

### My temporary to do list:
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

### And here is my cheat sheet:
https://guides.github.com/features/mastering-markdown/

