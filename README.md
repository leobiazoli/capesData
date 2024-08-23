<!-- README.md is generated from README.Rmd. Please edit that file -->

# capesData: Data on Scholarships in CAPES International Mobility Programs <img src="man/figures/logo.png" alt="Hex logo for package" align="right" width="120"/>

<!-- badges: start -->

<!-- badges: end -->

The goal of capesData is to provide an attractive dataset for exploring and visualizing data on the International Mobility Programs funded by CAPES/Brazil (Coordenação de Aperfeiçoamento de Pessoal de Nível Superior). The CAPES (Coordenação de Aperfeiçoamento de Pessoal de Nível Superior) database refers to international mobility programs for the period from 2010 to 2019.

## Installation

You can install the development version of capesData from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("leobiazoli/capesData")
```

## About the data

Data were collected from the CAPES/Brazil (Coordenação de Aperfeiçoamento de Pessoal de Nível Superior) <https://dadosabertos.capes.gov.br/dataset/>, referring to the international mobility programs from 2010 to 2019 funded by the Brazilian government.

The `capesData` package contains two datasets.

``` r
library(capesData)
```

We will also load the `tidyverse` package for pretty printing of tibbles and some code examples.

``` r
library(tidyverse)
```

One is called `capesData`, and is a simplified version of the raw data; see `?capesData` for more info:

``` r
capesData
#> # A tibble: 146,036 × 14
#>    ID_PROCESSO NM_NIVEL AN_INICIO ME_INICIO AN_FIM ME_FIM NM_IES_ORIGEM_PRINCI…¹
#>    <chr>       <chr>        <dbl> <chr>      <dbl> <chr>  <chr>                 
#>  1 3038-11-4   GRADUAÇ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#>  2 3038-11-4   GRADUAÇ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#>  3 402509      DOUTORA…      2007 04          2011 03     PONTIFÍCIA UNIVERSIDA…
#>  4 1091272     DOUTORA…      2012 03          2015 02     UNIVERSIDADE DE BRASÍ…
#>  5 623546      MESTRAD…      2009 12          2010 05     UNIVERSIDADE FEDERAL …
#>  6 0963-10-0   ESTÁGIO…      2010 05          2010 07     UNIVERSIDADE DE SÃO P…
#>  7 9904-11-5   DOUTORA…      2012 05          2013 04     UNIVERSIDADE FEDERAL …
#>  8 9904-11-5   DOUTORA…      2012 05          2013 04     UNIVERSIDADE FEDERAL …
#>  9 9202-12-9   DOUTORA…      2012 09          2013 04     UNIVERSIDADE DE BRASÍ…
#> 10 948932      DOUTORA…      2011 04          2011 09     UNIVERSIDADE FEDERAL …
#> # ℹ 146,026 more rows
#> # ℹ abbreviated name: ¹​NM_IES_ORIGEM_PRINCIPAL_DA
#> # ℹ 7 more variables: NM_UF_IES_ORIGEM <chr>, NM_IES_ESTUDO_PRINCIPAL_DA <chr>,
#> #   NM_PAIS_IES_ESTUDO <chr>, NM_GRANDE_AREA <chr>, NM_AREA_CONHECIMENTO <chr>,
#> #   NM_AREA_AVALIACAO <chr>, NM_PROGRAMA <chr>
```

The second dataset is `capesData_raw`, and contains all the variables and original names as downloaded; see `?capesData_raw` for more info.

``` r
capesData_raw
#> # A tibble: 146,036 × 51
#>    ID_PROCESSO NM_NIVEL AN_INICIO ME_INICIO AN_FIM ME_FIM NM_IES_ORIGEM_PRINCI…¹
#>    <chr>       <chr>        <dbl> <chr>      <dbl> <chr>  <chr>                 
#>  1 3038-11-4   GRADUAÇ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#>  2 3038-11-4   GRADUAÇ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#>  3 402509      DOUTORA…      2007 04          2011 03     PONTIFÍCIA UNIVERSIDA…
#>  4 1091272     DOUTORA…      2012 03          2015 02     UNIVERSIDADE DE BRASÍ…
#>  5 623546      MESTRAD…      2009 12          2010 05     UNIVERSIDADE FEDERAL …
#>  6 0963-10-0   ESTÁGIO…      2010 05          2010 07     UNIVERSIDADE DE SÃO P…
#>  7 9904-11-5   DOUTORA…      2012 05          2013 04     UNIVERSIDADE FEDERAL …
#>  8 9904-11-5   DOUTORA…      2012 05          2013 04     UNIVERSIDADE FEDERAL …
#>  9 9202-12-9   DOUTORA…      2012 09          2013 04     UNIVERSIDADE DE BRASÍ…
#> 10 948932      DOUTORA…      2011 04          2011 09     UNIVERSIDADE FEDERAL …
#> # ℹ 146,026 more rows
#> # ℹ abbreviated name: ¹​NM_IES_ORIGEM_PRINCIPAL_DA
#> # ℹ 44 more variables: NM_UF_IES_ORIGEM <chr>,
#> #   NM_IES_ESTUDO_PRINCIPAL_DA <chr>, NM_PAIS_IES_ESTUDO <chr>,
#> #   NM_GRANDE_AREA <chr>, NM_AREA_CONHECIMENTO <chr>, NM_AREA_AVALIACAO <chr>,
#> #   NM_PROGRAMA <chr>, CD_MOEDA <chr>, VL_TOTAL_RECEBIDO_MOEDA <dbl>,
#> #   VL_AUX_DESLOCAMENTO <dbl>, VL_ADICIONAL_LOCALIDADE <dbl>, …
```

## Examples

``` r
capesData |>
  count(NM_NIVEL)
#> # A tibble: 44 × 2
#>    NM_NIVEL                                       n
#>    <chr>                                      <int>
#>  1 APERFEIÇOAMENTO                               25
#>  2 APRIMORAMENTO                                  1
#>  3 ARTICULADOR PEDAGÓGICO                         6
#>  4 CAPACITAÇÃO                                   56
#>  5 CAPACITAÇÃO PROFESSORES DA EDUCAÇÃO BÁSICA   783
#>  6 CÁTEDRA                                       31
#>  7 CÁTEDRA  HARVARD                               1
#>  8 CÁTEDRA ESTADOS UNIDOS                         5
#>  9 CÁTEDRA EUROPA                                21
#> 10 DOUTOR JÚNIOR                                 31
#> # ℹ 34 more rows

capesData |>
  count(NM_GRANDE_AREA)
#> # A tibble: 10 × 2
#>    NM_GRANDE_AREA                  n
#>    <chr>                       <int>
#>  1 CIÊNCIAS AGRÁRIAS           12228
#>  2 CIÊNCIAS BIOLÓGICAS          9427
#>  3 CIÊNCIAS DA SAÚDE           12889
#>  4 CIÊNCIAS EXATAS E DA TERRA  17367
#>  5 CIÊNCIAS HUMANAS            17274
#>  6 CIÊNCIAS SOCIAIS APLICADAS  13513
#>  7 ENGENHARIAS                 46006
#>  8 LINGÜÍSTICA, LETRAS E ARTES  6052
#>  9 MULTIDISCIPLINAR             6041
#> 10 <NA>                         5239
```

## References

CAPES. (n.d.). “Coordenacao de Aperfeicoamento de Pessoal de Nivel Superior.” Retrieved July 07, 2024, from <https://dadosabertos.capes.gov.br/dataset/>.
