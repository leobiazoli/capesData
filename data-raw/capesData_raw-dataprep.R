## Preparation capesData_raw dataset

library(tidyverse)
library(readr)

# # Loading Data (2010 - 2019) ----------------------------------------------
# 
# # Data - 2010 to 2012
# url_1 <- "https://dadosabertos.capes.gov.br/dataset/8f027c64-41ff-4cff-998c-b4e8e6144d3c/resource/6a3ba224-ed18-4e34-a862-c59752edc91c/download/br-capes-bolsas-programas-mobilidade-internacional-2010a2012-2021-03-01.csv"
# 
# dados_10a12 <- read_delim(url_1, delim = ";", locale = locale(encoding = "latin1")) 
# 
# # Data - 2013 to 2016
# url_2 <- "https://dadosabertos.capes.gov.br/dataset/c61d5374-8d7e-49a5-950b-c09016b272d4/resource/3d43d277-6954-4e2f-9b89-f93b59575ec9/download/br-capes-bolsas-programas-mobilidade-internacional-2013a2016-2021-03-01.csv"
# 
# dados_13a16 <- read_delim(url_2, delim = ";", locale = locale(encoding = "latin1"))
# 
# # Data - 2017 to 2019
# url_3 <- "https://dadosabertos.capes.gov.br/dataset/b4d8eff4-329c-4eee-8801-746e743df0d3/resource/96f5e480-262f-4ddb-83da-6a6e2a2e09eb/download/br-capes-bolsas-programas-mobilidade-internacional-2017a2019-2021-03-01.csv"
# 
# dados_17a19 <- read_delim(url_3, delim = ";", locale = locale(encoding = "latin1"))
# 
# 
# # Data organization -------------------------------------------------------
# 
# data_1 <- dados_10a12 |>
#   select(!NM_IES_ESTUDO_PRINCIPAL)
# 
# data_2 <- dados_13a16
# 
# data_3 <- dados_17a19 |>
#   dplyr::rename(VL_AUX_DESLOCAMENTO_PESQUISA = VL_AUXILIO_DESLOCAMENTO_PESQUISA)
# 
# capesData1 <- rbind.fill(data_1, data_2, data_3)
# 
# capesData_raw <- capesData1 |>
#   select(-c(NM_BENEFICIARIO, NR_DOCUMENTO, VL_CAPITAL, VL_AUX_SEGURO_SAUDE_CAPES_SET, 
#             VL_REDUCAO_QUADRO_PERMANENTE, VL_DIARIAS, VL_AUX_DESLOCAMENTO_PARCELA_U))
# 
# capesData <- capesData_raw |>
#   select(c(ID_PROCESSO, NM_NIVEL, AN_INICIO, ME_INICIO, AN_FIM, ME_FIM, NM_IES_ORIGEM_PRINCIPAL_DA, 
#            NM_UF_IES_ORIGEM, NM_IES_ESTUDO_PRINCIPAL_DA, NM_PAIS_IES_ESTUDO, NM_GRANDE_AREA, 
#            NM_AREA_CONHECIMENTO, NM_AREA_AVALIACAO, NM_PROGRAMA))
# 
# save(capesData_raw, file = "capesData_raw.rda")

old_capesData_raw <- capesData_raw

# make tibble
capesData_raw <- as_tibble(capesData_raw)

usethis::use_data(capesData_raw, overwrite = TRUE)
