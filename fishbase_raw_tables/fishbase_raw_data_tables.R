library(dplyr)
library(dbplyr)
library(rfishbase)
library(tidyr)

setwd("fishbase_raw_tables/")

#drawing all data from fishbase r package and saving as RDA file 

fb_species <- species(species_list())
fb_diet <- diet(species_list())
fb_diet_items <- diet_items(species_list())
fb_brains <- brains(species_list())
fb_ecology <- ecology(species_list())
fb_oxygen <- oxygen(species_list())
fb_reproduction <- reproduction(species_list())
fb_speed <- speed(species_list())


#create RDA
#save as raw table w/ date saved 
str1 <- "fb_raw_data.RDA"
save(fb_species, fb_diet, fb_diet_items, fb_brains, fb_ecology, fb_oxygen, fb_reproduction, fb_speed, file = paste0(sub("\\..*", " ", str1), format(Sys.Date(),"%d_%m_%y"), ".RDA"))

