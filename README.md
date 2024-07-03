
<!-- README.md is generated from README.Rmd. Please edit that file -->

# capesData: Data on Scholarships in CAPES International Mobility Programs

<!-- badges: start -->
<!-- badges: end -->

The goal of capesData is to provide an attractive dataset for exploring
and visualizing data on the International Mobility Programs funded by
CAPES/Brazil. The CAPES database refers to international mobility
programs for the period from 2010 to 2019.

## Installation

You can install the development version of capesData from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("leobiazoli/capesData")
```

## About the data

Data were collected from the CAPES/Brazil (Coordenação de
Aperfeiçoamento de Pessoal de Nível Superior)
[https://dadosabertos.capes.gov.br/dataset/](open%20data%20portal),
referring to the international mobility programs from 2010 to 2019
funded by CAPES/Brazil.

The `capesData` package contains two datasets.

``` r
library(capesData)
data(package = 'capesData')
```

One is called `capesData`, and is a simplified version of the raw data;
see `?capesData` for more info:

``` r
head(capesData)
#>   ID_PROCESSO             NM_NIVEL AN_INICIO ME_INICIO AN_FIM ME_FIM
#> 1   3038-11-4  GRADUAÇÃO SANDUÍCHE      2011        08   2012     05
#> 2   3038-11-4  GRADUAÇÃO SANDUÍCHE      2011        08   2012     05
#> 3      402509      DOUTORADO PLENO      2007        04   2011     03
#> 4     1091272      DOUTORADO PLENO      2012        03   2015     02
#> 5      623546   MESTRADO SANDUÍCHE      2009        12   2010     05
#> 6   0963-10-0 ESTÁGIO PÓS-DOUTORAL      2010        05   2010     07
#>                   NM_IES_ORIGEM_PRINCIPAL_DA  NM_UF_IES_ORIGEM
#> 1     UNIVERSIDADE FEDERAL DE CAMPINA GRANDE           PARAÍBA
#> 2     UNIVERSIDADE FEDERAL DE CAMPINA GRANDE           PARAÍBA
#> 3 PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ            PARANÁ
#> 4                   UNIVERSIDADE DE BRASÍLIA  DISTRITO FEDERAL
#> 5  UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL RIO GRANDE DO SUL
#> 6                  UNIVERSIDADE DE SÃO PAULO         SÃO PAULO
#>                   NM_IES_ESTUDO_PRINCIPAL_DA NM_PAIS_IES_ESTUDO
#> 1  INSTITUT NATIONAL DES SCIENCES APPLIQUÉES             FRANÇA
#> 2  INSTITUT NATIONAL DES SCIENCES APPLIQUÉES             FRANÇA
#> 3 PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ             BRASIL
#> 4                   UNIVERSIDADE DE BRASÍLIA             BRASIL
#> 5  UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL             BRASIL
#> 6                    UNIVERSIDAD DE ALICANTE            ESPANHA
#>               NM_GRANDE_AREA NM_AREA_CONHECIMENTO
#> 1                ENGENHARIAS  ENGENHARIA MECÂNICA
#> 2                ENGENHARIAS  ENGENHARIA MECÂNICA
#> 3 CIÊNCIAS SOCIAIS APLICADAS        ADMINISTRAÇÃO
#> 4        CIÊNCIAS BIOLÓGICAS                 <NA>
#> 5                ENGENHARIAS     ENGENHARIA CIVIL
#> 6        CIÊNCIAS BIOLÓGICAS                 <NA>
#>                                                   NM_AREA_AVALIACAO
#> 1                                                   ENGENHARIAS III
#> 2                                                   ENGENHARIAS III
#> 3 ADMINISTRAÇÃO PÚBLICA E DE EMPRESAS, CIÊNCIAS CONTÁBEIS E TURISMO
#> 4                                             CIÊNCIAS BIOLÓGICAS I
#> 5                                                     ENGENHARIAS I
#> 6                                                              <NA>
#>                                      NM_PROGRAMA
#> 1 BRAFITEC - BRASIL FRANÇA ENGENHARIA TECNOLOGIA
#> 2 BRAFITEC - BRASIL FRANÇA ENGENHARIA TECNOLOGIA
#> 3  PROGRAMA ESTUDANTES CONVÊNIO DE PÓS-GRADUAÇÃO
#> 4  PROGRAMA ESTUDANTES CONVÊNIO DE PÓS-GRADUAÇÃO
#> 5                        CAPES/UDELAR - DOCENTES
#> 6                                   MECD ESPANHA
```

The second dataset is `capesData_raw`, and contains all the variables
and original names as downloaded; see `?capesData_raw` for more info.

``` r
head(capesData_raw)
#>   ID_PROCESSO             NM_NIVEL AN_INICIO ME_INICIO AN_FIM ME_FIM
#> 1   3038-11-4  GRADUAÇÃO SANDUÍCHE      2011        08   2012     05
#> 2   3038-11-4  GRADUAÇÃO SANDUÍCHE      2011        08   2012     05
#> 3      402509      DOUTORADO PLENO      2007        04   2011     03
#> 4     1091272      DOUTORADO PLENO      2012        03   2015     02
#> 5      623546   MESTRADO SANDUÍCHE      2009        12   2010     05
#> 6   0963-10-0 ESTÁGIO PÓS-DOUTORAL      2010        05   2010     07
#>                   NM_IES_ORIGEM_PRINCIPAL_DA  NM_UF_IES_ORIGEM
#> 1     UNIVERSIDADE FEDERAL DE CAMPINA GRANDE           PARAÍBA
#> 2     UNIVERSIDADE FEDERAL DE CAMPINA GRANDE           PARAÍBA
#> 3 PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ            PARANÁ
#> 4                   UNIVERSIDADE DE BRASÍLIA  DISTRITO FEDERAL
#> 5  UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL RIO GRANDE DO SUL
#> 6                  UNIVERSIDADE DE SÃO PAULO         SÃO PAULO
#>                   NM_IES_ESTUDO_PRINCIPAL_DA NM_PAIS_IES_ESTUDO
#> 1  INSTITUT NATIONAL DES SCIENCES APPLIQUÉES             FRANÇA
#> 2  INSTITUT NATIONAL DES SCIENCES APPLIQUÉES             FRANÇA
#> 3 PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ             BRASIL
#> 4                   UNIVERSIDADE DE BRASÍLIA             BRASIL
#> 5  UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL             BRASIL
#> 6                    UNIVERSIDAD DE ALICANTE            ESPANHA
#>               NM_GRANDE_AREA NM_AREA_CONHECIMENTO
#> 1                ENGENHARIAS  ENGENHARIA MECÂNICA
#> 2                ENGENHARIAS  ENGENHARIA MECÂNICA
#> 3 CIÊNCIAS SOCIAIS APLICADAS        ADMINISTRAÇÃO
#> 4        CIÊNCIAS BIOLÓGICAS                 <NA>
#> 5                ENGENHARIAS     ENGENHARIA CIVIL
#> 6        CIÊNCIAS BIOLÓGICAS                 <NA>
#>                                                   NM_AREA_AVALIACAO
#> 1                                                   ENGENHARIAS III
#> 2                                                   ENGENHARIAS III
#> 3 ADMINISTRAÇÃO PÚBLICA E DE EMPRESAS, CIÊNCIAS CONTÁBEIS E TURISMO
#> 4                                             CIÊNCIAS BIOLÓGICAS I
#> 5                                                     ENGENHARIAS I
#> 6                                                              <NA>
#>                                      NM_PROGRAMA CD_MOEDA
#> 1 BRAFITEC - BRASIL FRANÇA ENGENHARIA TECNOLOGIA      EUR
#> 2 BRAFITEC - BRASIL FRANÇA ENGENHARIA TECNOLOGIA      USD
#> 3  PROGRAMA ESTUDANTES CONVÊNIO DE PÓS-GRADUAÇÃO      BRL
#> 4  PROGRAMA ESTUDANTES CONVÊNIO DE PÓS-GRADUAÇÃO      BRL
#> 5                        CAPES/UDELAR - DOCENTES      BRL
#> 6                                   MECD ESPANHA      EUR
#>   VL_TOTAL_RECEBIDO_MOEDA VL_AUX_DESLOCAMENTO VL_ADICIONAL_LOCALIDADE
#> 1                   10065                  NA                      NA
#> 2                    3412                3412                      NA
#> 3                   27000                  NA                      NA
#> 4                   19200                  NA                      NA
#> 5                    6000                  NA                      NA
#> 6                    5720                  NA                      NA
#>   VL_ADICIONAL_DEPENDENTE VL_BOLSA VL_TAXA_ESCOLAR VL_DIF_AUX_DESLOCAMENTO
#> 1                      NA     8265              NA                      NA
#> 2                      NA       NA              NA                      NA
#> 3                      NA    27000              NA                      NA
#> 4                      NA    19200              NA                      NA
#> 5                      NA     6000              NA                      NA
#> 6                      NA     5180              NA                      NA
#>   VL_DIF_SEGURO_SAUDE VL_SEGURO_SAUDE VL_TAXA_ESCOLAR_VALOR_P
#> 1                  NA             700                      NA
#> 2                  NA              NA                      NA
#> 3                  NA              NA                      NA
#> 4                  NA              NA                      NA
#> 5                  NA              NA                      NA
#> 6                  NA             210                      NA
#>   VL_OUTROS_CREDITOS VL_DIF_MENSALIDADE VL_OUTROS_DEBITOS VL_DIF_DEPENDENTES
#> 1                 NA                 NA                NA                 NA
#> 2                 NA                 NA                NA                 NA
#> 3                 NA                 NA                NA                 NA
#> 4                 NA                 NA                NA                 NA
#> 5                 NA                 NA                NA                 NA
#> 6                 NA                 NA                NA                 NA
#>   VL_MENSALIDADE VL_AUX_INSTALACAO VL_AUX_SEGURO_SAUDE_ANUAL
#> 1             NA              1100                        NA
#> 2             NA                NA                        NA
#> 3             NA                NA                        NA
#> 4             NA                NA                        NA
#> 5             NA                NA                        NA
#> 6             NA               330                        NA
#>   VL_MENSALIDADES_AGENDADAS VL_REEMBOLSO_TAXA_ESCOLAR VL_AUX_MORADIA
#> 1                        NA                        NA             NA
#> 2                        NA                        NA             NA
#> 3                        NA                        NA             NA
#> 4                        NA                        NA             NA
#> 5                        NA                        NA             NA
#> 6                        NA                        NA             NA
#>   VL_DIF_AUX_INSTALACAO VL_REEMBOLSO_PASSAGEM_AEREA VL_AUX_MATERIAL_DIDATICO
#> 1                    NA                          NA                       NA
#> 2                    NA                          NA                       NA
#> 3                    NA                          NA                       NA
#> 4                    NA                          NA                       NA
#> 5                    NA                          NA                       NA
#> 6                    NA                          NA                       NA
#>   VL_AUX_SEGURO_SAUDE VL_AJUDA_CUSTO_CAPES_SETEC VL_MENSALIDADE_DEMANDA
#> 1                  NA                         NA                     NA
#> 2                  NA                         NA                     NA
#> 3                  NA                         NA                     NA
#> 4                  NA                         NA                     NA
#> 5                  NA                         NA                     NA
#> 6                  NA                         NA                     NA
#>   VL_AUX_DESLOCAMENTO_DEMANDA VL_MENSALIDADE_LIC_MATERNIDADE
#> 1                          NA                             NA
#> 2                          NA                             NA
#> 3                          NA                             NA
#> 4                          NA                             NA
#> 5                          NA                             NA
#> 6                          NA                             NA
#>   VL_ESCOLA_ALTOS_ESTUDOS VL_AJUDA_CUSTO VL_AUX_INSTALACAO_DEPENDENTE
#> 1                      NA             NA                           NA
#> 2                      NA             NA                           NA
#> 3                      NA             NA                           NA
#> 4                      NA             NA                           NA
#> 5                      NA             NA                           NA
#> 6                      NA             NA                           NA
#>   VL_AUX_SEGURO_SAUDE_DEPENDENTE VL_AJUDA_CUSTO_MTUR
#> 1                             NA                  NA
#> 2                             NA                  NA
#> 3                             NA                  NA
#> 4                             NA                  NA
#> 5                             NA                  NA
#> 6                             NA                  NA
#>   VL_AUX_DESLOCAMENTO_RETORNO_D VL_AUX_SEGURO_SAUDE_DEMANDA
#> 1                            NA                          NA
#> 2                            NA                          NA
#> 3                            NA                          NA
#> 4                            NA                          NA
#> 5                            NA                          NA
#> 6                            NA                          NA
#>   VL_AUX_DESLOCAMENTO_PESQUISA
#> 1                           NA
#> 2                           NA
#> 3                           NA
#> 4                           NA
#> 5                           NA
#> 6                           NA
```

## Examples

You can find these and more code examples for exploring `capesData` in
vignette(“examples”).

For example:

``` r
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.4     ✔ readr     2.1.5
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
#> ✔ purrr     1.0.2     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
capesData |>
  count(NM_NIVEL)
#>                                       NM_NIVEL     n
#> 1                              APERFEIÇOAMENTO    25
#> 2                                APRIMORAMENTO     1
#> 3                       ARTICULADOR PEDAGÓGICO     6
#> 4                                  CAPACITAÇÃO    56
#> 5   CAPACITAÇÃO PROFESSORES DA EDUCAÇÃO BÁSICA   783
#> 6                                      CÁTEDRA    31
#> 7                             CÁTEDRA  HARVARD     1
#> 8                       CÁTEDRA ESTADOS UNIDOS     5
#> 9                               CÁTEDRA EUROPA    21
#> 10                               DOUTOR JÚNIOR    31
#> 11                                DOUTOR PLENO    40
#> 12                               DOUTOR SÊNIOR    89
#> 13                             DOUTORADO PLENO  8653
#> 14                         DOUTORADO SANDUÍCHE 34089
#> 15                     ESCOLA DE ALTOS ESTUDOS    45
#> 16               ESPECIALIZAÇÃO UAB-MOÇAMBIQUE   113
#> 17                                     ESTÁGIO   143
#> 18                             ESTÁGIO DOCENTE   194
#> 19                        ESTÁGIO PÓS-DOUTORAL  6789
#> 20                              ESTÁGIO SÊNIOR  2962
#> 21                                   GRADUAÇÃO    54
#> 22                         GRADUAÇÃO SANDUÍCHE 85548
#> 23                        INICIAÇÃO CIENTÍFICA   343
#> 24          INICIAÇÃO TECNOLÓGICA E INDUSTRIAL    37
#> 25                                JOVEM DOUTOR    21
#> 26                               JOVEM TALENTO    25
#> 27                         JOVENS TALENTOS - A   289
#> 28                         JOVENS TALENTOS - B   127
#> 29                                    MESTRADO    74
#> 30                       MESTRADO PROFISSIONAL    23
#> 31           MESTRADO PROFISSIONAL NO EXTERIOR     1
#> 32               MESTRADO PROFISSIONAL NOS EUA   560
#> 33                          MESTRADO SANDUÍCHE   470
#> 34              PESQUISADOR VISITANTE ESPECIAL  1179
#> 35                         PROFESSOR CONVIDADO    68
#> 36                         PROFESSOR VISITANTE   483
#> 37       PROFESSOR VISITANTE DO EXTERIOR PLENO   112
#> 38      PROFESSOR VISITANTE DO EXTERIOR SÊNIOR   149
#> 39                  PROFESSOR VISITANTE JÚNIOR   316
#> 40                  PROFESSOR VISITANTE SÊNIOR   426
#> 41 PROFESSOR/PESQUISADOR VISITANTE NO EXTERIOR    33
#> 42                               PÓS-DOUTORADO  1535
#> 43                        TIMOR LESTE BOLSISTA    72
#> 44                           TIMOR LESTE TUTOR    14

capesData |>
  count(NM_GRANDE_AREA)
#>                 NM_GRANDE_AREA     n
#> 1            CIÊNCIAS AGRÁRIAS 12228
#> 2          CIÊNCIAS BIOLÓGICAS  9427
#> 3            CIÊNCIAS DA SAÚDE 12889
#> 4   CIÊNCIAS EXATAS E DA TERRA 17367
#> 5             CIÊNCIAS HUMANAS 17274
#> 6   CIÊNCIAS SOCIAIS APLICADAS 13513
#> 7                  ENGENHARIAS 46006
#> 8  LINGÜÍSTICA, LETRAS E ARTES  6052
#> 9             MULTIDISCIPLINAR  6041
#> 10                        <NA>  5239
```

## Additional data use information

## References
