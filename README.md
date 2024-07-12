
<!-- README.md is generated from README.Rmd. Please edit that file -->

# capesData: Data on Scholarships in CAPES International Mobility Programs

<!-- badges: start -->
<!-- badges: end -->

![](man/figures/logo.png)

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
```

One is called `capesData`, and is a simplified version of the raw data;
see `?capesData` for more info:

``` r
head(capesData)
#> # A tibble: 6 × 14
#>   ID_PROCESSO NM_NIVEL  AN_INICIO ME_INICIO AN_FIM ME_FIM NM_IES_ORIGEM_PRINCI…¹
#>   <chr>       <chr>         <dbl> <chr>      <dbl> <chr>  <chr>                 
#> 1 3038-11-4   GRADUAÇÃ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#> 2 3038-11-4   GRADUAÇÃ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#> 3 402509      DOUTORAD…      2007 04          2011 03     PONTIFÍCIA UNIVERSIDA…
#> 4 1091272     DOUTORAD…      2012 03          2015 02     UNIVERSIDADE DE BRASÍ…
#> 5 623546      MESTRADO…      2009 12          2010 05     UNIVERSIDADE FEDERAL …
#> 6 0963-10-0   ESTÁGIO …      2010 05          2010 07     UNIVERSIDADE DE SÃO P…
#> # ℹ abbreviated name: ¹​NM_IES_ORIGEM_PRINCIPAL_DA
#> # ℹ 7 more variables: NM_UF_IES_ORIGEM <chr>, NM_IES_ESTUDO_PRINCIPAL_DA <chr>,
#> #   NM_PAIS_IES_ESTUDO <chr>, NM_GRANDE_AREA <chr>, NM_AREA_CONHECIMENTO <chr>,
#> #   NM_AREA_AVALIACAO <chr>, NM_PROGRAMA <chr>
```

The second dataset is `capesData_raw`, and contains all the variables
and original names as downloaded; see `?capesData_raw` for more info.

``` r
head(capesData_raw)
#> # A tibble: 6 × 51
#>   ID_PROCESSO NM_NIVEL  AN_INICIO ME_INICIO AN_FIM ME_FIM NM_IES_ORIGEM_PRINCI…¹
#>   <chr>       <chr>         <dbl> <chr>      <dbl> <chr>  <chr>                 
#> 1 3038-11-4   GRADUAÇÃ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#> 2 3038-11-4   GRADUAÇÃ…      2011 08          2012 05     UNIVERSIDADE FEDERAL …
#> 3 402509      DOUTORAD…      2007 04          2011 03     PONTIFÍCIA UNIVERSIDA…
#> 4 1091272     DOUTORAD…      2012 03          2015 02     UNIVERSIDADE DE BRASÍ…
#> 5 623546      MESTRADO…      2009 12          2010 05     UNIVERSIDADE FEDERAL …
#> 6 0963-10-0   ESTÁGIO …      2010 05          2010 07     UNIVERSIDADE DE SÃO P…
#> # ℹ abbreviated name: ¹​NM_IES_ORIGEM_PRINCIPAL_DA
#> # ℹ 44 more variables: NM_UF_IES_ORIGEM <chr>,
#> #   NM_IES_ESTUDO_PRINCIPAL_DA <chr>, NM_PAIS_IES_ESTUDO <chr>,
#> #   NM_GRANDE_AREA <chr>, NM_AREA_CONHECIMENTO <chr>, NM_AREA_AVALIACAO <chr>,
#> #   NM_PROGRAMA <chr>, CD_MOEDA <chr>, VL_TOTAL_RECEBIDO_MOEDA <dbl>,
#> #   VL_AUX_DESLOCAMENTO <dbl>, VL_ADICIONAL_LOCALIDADE <dbl>,
#> #   VL_ADICIONAL_DEPENDENTE <dbl>, VL_BOLSA <dbl>, VL_TAXA_ESCOLAR <dbl>, …
```

## Examples

You can find these and more code examples for exploring `capesData` in
vignette(“examples”).

For example:

``` r
library(tidyverse)
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

## Additional data use information

## References
