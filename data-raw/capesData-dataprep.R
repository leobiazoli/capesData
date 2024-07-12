## code to prepare capesData dataset goes here

library(tidyverse)

# add code to create capesData here
old_capesData <- capesData

# make tibble
capesData <- as_tibble(capesData)

usethis::use_data(capesData, overwrite = TRUE)
