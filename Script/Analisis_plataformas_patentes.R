#-------------------------------------------------------------------------#
# Dependencies                                                            #
#-------------------------------------------------------------------------#

library(tidyverse)
library(lubridate)
library(janitor)
library(extrafont)

loadfonts(device = "ubuntu", quiet = TRUE) 
loadfonts()
#-------------------------------------------------------------------------#
# Loading                                                                 #
#-------------------------------------------------------------------------#

bra_lens <- read_csv("Dataset/Brazil/BR-2021-ENERO_thelens.csv")
bra_espacenet <- read.csv("Dataset/Brazil/Espacenet_enero_2021.csv", sep = ",")

#-------------------------------------------------------------------------#
# Data Wrangling                                                          #
#-------------------------------------------------------------------------#

head(bra_lens, 5)

bra_lens %>%
  clean_names() %>% 
  select(lens_id,application_date,publication_date, publication_number, title, applicants, inventors,type) %>% 
  filter(type == "Patent Application")-> bra_lens



bra_lens %>% 
  filter(publication_number == "BR 202019012940 U2")

bra_lens %>% 
  filter(publication_date== "2021-01-05") -> lens_1
#BR102013023630A2
bra_espacenet %>% 
  filter(Publication.date == "2021-01-05") -> espace_1
head(bra_espacenet)  


lens_1 %>% 
  filter(publication_number == "BR 102019013642 A2")

espace_1 %>% 
  filter(Publication.number == "BR112013025099A2")
lens_1[1,4]

#### prueba rapida

prueba_lens

prueba_espacenet <- read.csv("Dataset/Brazil/prueba_1_enero_especenet.csv")
prueba_lens <- read.csv("Dataset/Brazil/5de_enero_lens.csv")


prueba_lens %>% 
  filter(Type == "Patent Application") -> prueba_lens
