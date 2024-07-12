## code to prepare capesData_raw dataset goes here

library(tidyverse)

# add code to create capesData here
old_capesData_raw <- capesData_raw

# make tibble
capesData_raw <- as_tibble(capesData_raw)

usethis::use_data(capesData_raw, overwrite = TRUE)
