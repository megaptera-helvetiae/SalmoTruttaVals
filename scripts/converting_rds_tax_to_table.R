setwd("/Users/megaptera/Desktop/outputs_March18")

tax_new_green_R1 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_new_R1_March18.rds")
write.table(tax_new_green_R1, file="tax_clean_green_R1.txt")

#all tax_new_March18
tax_new_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_new_March18.rds")
write.table(tax_new_March18, file="tax_new_March18.txt")

#clean R1 tax_new_R1_March18
tax_new_R1_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_new_R1_March18.rds")
write.table(tax_new_R1_March18, file="tax_new_R1_March18.txt")

# clean R1 green tax_new_R1_green_March18
tax_new_R1_green_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_new_R1_green_March18.rds")
write.table(tax_new_R1_green_March18, file="tax_new_R1_green_March18.txt")

#all species level tax_new_species-level_March18
tax_new_species.level_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_new_species-level_March18.rds")
write.table(tax_new_species.level_March18, file="tax_new_species.level_March18.txt")

#unclean R1 green tax_old_R1_green_March18
tax_old_R1_green_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_old_R1_green_March18.rds")
write.table(tax_old_R1_green_March18, file="tax_old_R1_green_March18.txt")

# unclean R1 tax_old_R1_March18
tax_old_R1_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_old_R1_March18.rds")
write.table(tax_old_R1_March18, file="tax_old_R1_March18.txt")

# unclean R2 tax_old_R2_March18
tax_old_R2_March18 <- readRDS("/Users/megaptera/Desktop/outputs_March18/tax_old_R2_March18.rds")
write.table(tax_old_R2_March18, file="tax_old_R2_March18.txt")

