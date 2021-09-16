library(dplyr)
library(dbplyr)
library(rfishbase)
library(tidyr)
library(tidyverse)

#clean up the raw data RDA
load(file = "fishbase_raw_tables/fb_raw_data 14_09_21.RDA")

#remove duplicates and mistakes in database 

#species table 
species <- fb_species %>% dplyr::filter(!duplicated(Species))
species <- species %>% filter(Species!="0 -1"&Species!="0 0"&Species!="0.5 0"&Species!="0.5001000165939331 0"&Species!="0.5005000233650208 0"&Species!="1 -1"&Species!="1 0"&Species!="1.5 0"&Species!="10 0"&Species!="2 0"&Species!="Genus Sp"&Species!="Genus Species")
#save as rds
write_rds()

  
  
  