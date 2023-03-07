library(writexl)
library(readxl)
library(tidyverse)
library(stringr)


# create path for current directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))


# read files 
DF <- read_excel("../Abgleich_Vulgata/Abgleich_Genesis_Exodus2023-02-24.xlsx", 
                 col_types = "text")

# identify potential lat future 2 forms
DF <- DF %>% 
  mutate(pot_Futur2 = case_when(endsWith(Token_clean, "ero")~ "yes", 
                            endsWith(Token_clean, "eris")~ "yes", 
                            endsWith(Token_clean, "erit")~ "yes", 
                            endsWith(Token_clean, "erimus")~ "yes", 
                            endsWith(Token_clean, "eritis")~ "yes", 
                            endsWith(Token_clean, "erint")~ "yes"))

# give list of potential forms
a <- DF %>% 
  filter(Futur == "FUTUR") %>% 
  group_by(Futur2, Token_clean) %>% 
  count() %>% 
  filter(Futur2 == "yes")

# write dataframe and list of potential items in xlsx files with current date
today <- str_split_fixed(Sys.time(), " ", n = 2)
today <- today
write_xlsx(DF, paste0('../Abgleich_Vulgata/Abgleich_Genesis_Exodus',today,'.xlsx'))
write_xlsx(a, paste0('../Abgleich_Vulgata/PotentiellFutur2',today,'.xlsx'))


