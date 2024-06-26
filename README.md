# capesData: Data on Scholarships in CAPES International Mobility Programs

The goal of capesData is to provide an attractive dataset for exploring and visualizing data on the International Mobility Programs funded by CAPES/Brazil. The CAPES database refers to international mobility programs for the period from 2010 to 2019.

## Installation

Install the `capesData` package, load it and use the data.

To install the development version from [https://github.com](GitHub) use:
```{r}
# install.packages("devtools")
devtools::install_github("leobiazoli/capesData")
library(capesData)
```
## About the data

Data were collected from the CAPES/Brazil (Coordenação de Aperfeiçoamento de Pessoal de Nível Superior) [https://dadosabertos.capes.gov.br/dataset/](open data portal), referring to the international mobility programs from 2010 to 2019 funded by CAPES/Brazil.

The `capesData` package contains two datasets.
```{r}
data(package = 'capesData')
```


One is called `capesData`, and is a simplified version of the raw data; see `?capesData` for more info:
```{r}
head(capesData)
```

The second dataset is `capesData_raw`, and contains all the variables and original names as downloaded; see `?capesData_raw` for more info.
```{r}
head(capesData_raw)
```

## Examples

You can find these and more code examples for exploring `capesData` in vignette("examples").

For example:

```{r}
library(tidyverse)
capesData |>
  count(NM_NIVEL)

capesData |>
  count(NM_GRANDE_AREA)
```

## Additional data use information

## References
