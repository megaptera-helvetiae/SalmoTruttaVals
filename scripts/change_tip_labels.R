setwd("/Users/megaptera/Desktop")

library(ape)
tr <- rtree(5) 
plot(tr)
tr$tip.label
# "t4" "t2" "t5" "t3" "t1"


d1 <- c("four","two","five","three","one") 
d1

tr$tip.label <- d1
plot(tr)


# Tutorial online that did not work:

library(ape)
tr <- rtree(5) 
d1 <- c("t1","t2","t3","t4","t5") 
d2 <- c( "paste(italic('Aus bus'), ' top')", "paste(italic('Aus bus'), ' bottom')", "paste(italic('Aus cus'), ' middle')", "paste(italic('Aus cus'), ' north')", "paste(italic('Dus gus'), ' south')" ) 
d <- as.data.frame(cbind(label=d1, nlabel=d2))

tr$tip.label<-as.character(d[[2]][match(tr$tip.label, d[[1]])])
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))

tr$tip.label<-d[[2]][match(tr$tip.label, d[[1]])]
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))

# from here:
# https://www.r-bloggers.com/changing-phylogeny-tip-labels-in-r/

# Now it works:

library(ape)
tr <- rtree(5) 
d1 <- c("t1","t2","t3","t4","t5") 
d2 <- c( "paste(italic('Aus bus'), ' top')", "paste(italic('Aus bus'), ' bottom')", "paste(italic('Aus cus'), ' middle')", "paste(italic('Aus cus'), ' north')", "paste(italic('Dus gus'), ' south')" ) 
d <- as.data.frame(cbind(label=d1, nlabel=d2))


tr$tip.label<-as.character(d[[2]][match(tr$tip.label, d[[1]])])
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))

# The code in the nlabel column contains code defining a plottable expression that enables scientific names to be formatted as italics. In my work, I saved this table as a separate file which I call with 

read.table("file.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, quote="")

setwd("/Users/megaptera/Desktop/")
dat_labels <- read.delim("taxa_names.txt", header=T)
d1 <- as.character(dat_labels[,1])
d2 <- as.character(dat_labels[,3])

d <- as.data.frame(cbind(label=d1, nlabel=d2))


tr$tip.label <- as.character(d[,1])
tr$tip.label <- as.character(d[,2])



plot(tr)



tr <- rtree(5) 
tr$tip.label
write.table(tr$tip.label, file="momentane_labels.txt")
# give the columns names
# now use the same for the column with the Kam.xx shortcuts
# then merge the two files based on this column and rename
dat1 <- read.delim("momentane_labels.txt", header=T)
dat2 <- read.delim("taxa_names.txt", header=T)
dat1 <- as.data.frame(dat1)
dat2 <- as.data.frame(dat2)
dat3 <- merge(dat1, dat2, by="Label")
str(dat3)
tr$tip.label <- as.character(dat3$name)
plot(tr)







library(ape)
tr <- rtree(5) 
d1 <- c("t1","t2","t3","t4","t5") 
d2 <- c( "paste(italic('Aus bus'), ' top')", "paste(italic('Aus bus'), ' bottom')", "paste(italic('Aus cus'), ' middle')", "paste(italic('Aus cus'), ' north')", "paste(italic('Dus gus'), ' south')" ) 
d <- as.data.frame(cbind(label=d1, nlabel=d2))


tr$tip.label<-as.character(d[[2]][match(tr$tip.label, d[[1]])])
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))


tr$tip.label<-d[[2]][match(tr$tip.label, d[[1]])]
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))

# Now this is how I rename the tree:

tree.test <-read.tree(file = "sub_tree.tre")

# tree.test <-read.tree(file = "concat.updated.Kam.rename.Feb15.tre")
dat1 <- tree.test$tip.label
write.table(dat1, file="PDA_names.txt")

tree.test$tip.label
length(tree.test$tip.label)

subset.200 <- tree.test$tip.label



write.table(subset.200, file="tree_200_Kams.txt")

# What I do now is I write this file on my desktop,
# I give the column a name "Kams"
# and then merge it with Guillaume's original key file:

Kams_subset <- read.delim("tree_200_Kams.txt", header=T)
str(Kams_subset)
Kams_subset <- as.data.frame(Kams_subset)

Kams_key <- read.delim("key.txt", header=T)
str(Kams_key)
Kams_key <- as.data.frame(Kams_key)

merged<-merge(Kams_subset, Kams_key,by="Kams")
str(merged)

merged$real_name
merged$real_name <- as.character(merged$real_name)

tree.test$tip.label <- merged$real_name
plot(tree.test)

write.tree(tree.test, file="renamed_tree_200.tre")






# some old tree code:

setwd("/Users/megaptera/Desktop/")

library(ape)

cytb_tree_garli <-read.tree(file = "PSoutput_Dec.AA.tre")

culledtree <- drop.tip(cytb_tree_garli, "Leptospirillum_sp_Chile")
culledtree2 <- drop.tip(culledtree, "Acidobacterium_sp")
culledtree3 <- drop.tip(culledtree2, "Aminicenantes_sp4")
culledtree4 <- drop.tip(culledtree3, "Desulfacinum_infernum")
culledtree5 <- drop.tip(culledtree4, "Syntrophobacter_sp")
culledtree6 <- drop.tip(culledtree5, "Desulfotignum_sp2")
culledtree7 <- drop.tip(culledtree6, "Syntrophus_gentianae")
culledtree8 <- drop.tip(culledtree7, "Chloroflexus_sp1")
culledtree9 <- drop.tip(culledtree8, "Dehalococcoides_mccartyi_jena")
culledtree10 <- drop.tip(culledtree9, "Thermoanaerobacter_pseudethanolicus")
culledtree11 <- drop.tip(culledtree10, "Thermoanaerobacter_brockii_subsp._finnii")
culledtree12 <- drop.tip(culledtree11, "Thermoanaerobacterium_xylanolyticum")
culledtree13 <- drop.tip(culledtree12, "Thermoanaerobacterium_saccharolyticum1")
culledtree14 <- drop.tip(culledtree13, "Hippea_sp")
culledtree15 <- drop.tip(culledtree14, "Hydrogenobacter_thermophilus2")
culledtree16 <- drop.tip(culledtree15, "Coprothermobacter_sp")
culledtree17 <- drop.tip(culledtree16, "Aciduliprofundum_sp")
culledtree18 <- drop.tip(culledtree17, "Sulfolobus_sp1")
culledtree19 <- drop.tip(culledtree18, "Sulfolobus_sp2")
culledtree20 <- drop.tip(culledtree19, "Acidilobus_sp2")


culledtree21 <- drop.tip(culledtree20, "Brocadia_sp2")
culledtree22 <- drop.tip(culledtree21, "Brocadia_sp3")
culledtree23 <- drop.tip(culledtree22, "Sulfurihydrogenibium_sp")
culledtree24 <- drop.tip(culledtree23, "Aciduliprofundum_boonei")


culledtree23$tip.label[1] <- "Thermococcus sp."


write.tree(culledtree24, file="culled_aa_Dec.tre")

d1 <- c("t1","t2","t3","t4","t5")
d2 <- c("paste(italic('Aus bus'), ' top')", "paste(italic('Aus bus'), ' bottom')", "paste(italic('Aus cus'), ' middle')", "paste(italic('Aus cus'), ' north')", "paste(italic('Dus gus'), ' south')")

d <- as.data.frame(cbind(label=d1, nlabel=d2))

write.table(d, file="test.txt")
d <- read.table("labels.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE, quote="")

tr$tip.label<-d[[2]][match(tr$tip.label, d[[1]])]
tr$tip.label
tr$tip.label<-sapply(tr$tip.label, function(x) parse(text=x))

library(lattice)

plot(cytb_tree_garli, type = "phylogram", edge.width = 2)
str(cytb_tree_garli)
cytb_tree_garli$tip.label


is.rooted(cytb_tree_garli)
outgroup <- "Methanocaldococcus_jannaschii"
rooted_tree <- root(cytb_tree_garli, outgroup, resolve.root=TRUE)
plot(rooted_tree)
is.rooted(rooted_tree)