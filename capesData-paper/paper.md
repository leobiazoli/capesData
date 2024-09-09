---
title: 'capesData: Data on Scholarships in CAPES International Mobility Programs'
tags:
  - R
  - mobility program
  - scholarship
  - researcher
  - Brazil
authors:
  - name: Leonardo Biazoli
    orcid: 0000-0003-4069-111X
    corresponding: true 
    equal-contrib: true
    affiliation: "1, 2"
  - name: Mine Çetinkaya-Rundel
    equal-contrib: true
    orcid: 0000-0001-6452-2420
    affiliation: 3
  - name: Eric Fernandes de Mello Araujo
    orcid: 0000-0003-4263-9075
    equal-contrib: true
    affiliation: 2
  - name: Izabela Regina Cardoso de Oliveira
    orcid: 0000-0003-3254-2827
    equal-contrib: true
    affiliation: 2
affiliations:
 - name: Federal University of Alfenas, Brazil
   index: 1
 - name: Federal University of Lavras, Brazil
   index: 2
 - name: Duke University, USA
   index: 3
date: "2024-07-05"
output: html_document
bibliography: paper.bib
---

# Summary

`capesData` is an R package [@rbase] that provides an interface for accessing data on scholarships for international mobility programs funded by the Brazilian government through CAPES (Coordenação de Aperfeiçoamento de Pessoal de Nível Superior). The package provides access to information such as the type of scholarship program, the start and end dates of the scholarship, the home institution, the study institution, the country of study, the program name, and other variables related to the financial aid received by the scholars. The package provides information on scholars for the period between 2010 and 2019 and it contains two datasets. The first dataset contains only 14 variables and 146,036 observations, while the second dataset has 51 variables and the same number of observations. The package automates common data reading and organization steps and allows researchers to easily and transparently track the origin of the underlying data sources. It is designed to enable users to easily extend the package's features and contribute to shared data processing. The source code for the package code is version tracked and hosted on GitHub and CRAN (The Comprehensive R Archive Network).

# Statement of need

Evaluations of the effects of brain drain can be conducted from various perspectives and using different statistical models. One of the challenges in assessing international brain migration is the lack of organized and reliable databases over a long observation period. The works of @aref2019, @subbotin2021, @aykac2021, @kotsemir2022, and @poitras2023 utilize bibliometric databases, such as SCOPUS and Web of Science, to study the academic impacts of researchers' migratory movements. @baruffaldi2020 used multiple data sources to analyze the effect of an international mobility scholarship on research, including government data and data collected from candidates' curricula, LinkedIn profiles, and personal web pages. However, as highlighted by @subbotin2021, this type of database (bibliometric data) may have limitations, causing not only random noise but also systematic biases.

An alternative to minimize errors and work with reliable databases is to use government statistics provided by government agencies. At the national level, data on international academic mobility of researchers funded by the Brazilian government are available for download from official sources such as the Coordenação de Aperfeiçoamento de Pessoal de Nível Superior (CAPES) [@capes] or the Conselho Nacional de Desenvolvimento Científico e Tecnológico (CNPq) [@cnpq]. However, these governmental agencies provide data related to international academic mobility scholarships separated by year and/or programs, and this is generally the only way to access data on a national scale.

Sometimes gathered from multiple databases, for example, separated by year, this data comes in various formats and with different names for the same variables, requiring users to verify and standardize the data before it can be combined or processed for analysis. This creates the possibility of errors through programming mistakes, changes in variable names, or unexpected alterations in a data source. This can lead to misrepresentation of the data in ways that are difficult to identify, such as treating the same variable as two different variables.

Due to these issues, it is important to develop robust tools that provide clean, verified, and standardized data from multiple sources in a transparent manner. The `capesData` package provides easy access to clean data, ready to analyze the data of Brazilian researchers in government-funded scholarship programs for international academic mobility, and in a structure that is easy to track from raw data to the final set of standardized data. Additional arguments for this package allow users, among other options, to easily manipulate and visualize the data directly in R with two datasets: one complete set of raw data and another with summarized variables.

The `capesData` package relies heavily on popular packages that many researchers are familiar with (such as `dplyr` [@dplyr], `tidyr` [@tidyr], and others from the `tidyverse` [@tidyverse]), and therefore, it can be easily adopted by researchers working in R. Currently, `capesData` provides data collected by CAPES/Brazil for Brazilian researchers with international mobility scholarships from 2010 to 2019. The `capesData` package was developed to facilitate access, manipulation, and analysis of data from CAPES database. CAPES is a key Brazilian government agency responsible for the evaluation and support of higher education programs. The dataset contains valuable information for researchers, policymakers, and educational institutions.

# State of the field

Some R packages provide routines and bibliometric data that can be used to perform bibliometric data analyses but can also be utilized to track researcher mobility based on their publications, such as `bibliometrix` and `bibliometrixData` [@bibliometrix; @bibliometrixdata]. The `bibliometrix` package provides various routines to import bibliographic data from SCOPUS, Clarivate Analytics' Web of Science, PubMed, Digital Science Dimensions, and Cochrane databases, perform bibliometric analyses, and create data matrices for co-citation, coupling, scientific collaboration analysis, and co-word analysis. The `bibliometrixData` package includes example datasets extracted from SCOPUS and Clarivate Analytics' Web of Science.

Other interfaces that more closely resemble the purpose of the `capesData` package are the `getLattes` and `getLattesData` packages [@getlattes; @getlattesdata]. These packages provide information about researchers registered in the curriculum database for academics across the country, with over 5 million records, known as "Lattes" (<http://lattes.cnpq.br/>). The academic life of Brazilian researchers, or those related to Brazilian universities, is documented in Lattes. Some of the information that can be obtained includes professional training, research area, publications, academic advisory roles, projects, etc. The `getLattes` package allows working with Lattes data exported to XML format. The `getLattesData` package is a set of functions that I have been using to access the data. Therefore, using this package requires the manual download of zip files with the XML data.

The CAPES is a central Brazilian government agency responsible for overseeing and evaluating the quality of graduate programs and promoting scientific research and advanced studies in Brazil. CAPES maintains a comprehensive database that includes information on faculty, students, courses, publications, and institutional evaluations. This database is a vital resource for educational research, policy analysis, and institutional reporting. The `capesData` package provides a comprehensive and easy-to-use tool specifically designed to address the unique challenges of working with CAPES data. By automating data access and cleaning and offering robust data manipulation and visualization capabilities, `capesData` significantly enhances the efficiency and accessibility of CAPES data analysis. This package represents a significant advancement in empowering researchers, policymakers, and educational institutions to make data-driven decisions based on reliable and timely insights from CAPES data.

# Future Directions

Educational data analysis is constantly evolving, with increasing trends toward automation, integration, and accessibility. In the future, the field is likely to progress in the following directions:

-   **Data Integration:** Improved integration with other educational and research databases to provide a more comprehensive view of educational outcomes.

-   **Advanced Analytics:** Incorporation of advanced analytical techniques, including machine learning and artificial intelligence, to uncover deeper insights from educational data.

The `capesData` package is well-positioned to adapt to these trends and continue providing valuable tools and capabilities to its users. By staying at the cutting edge of technology and user needs, `capesData` aims to contribute significantly to the advancement of educational research and policy analysis in Brazil and beyond.

# Acknowledgements

This package provides an interface to data sources that are usually collected and maintained by individuals. We would like to thank all the contributors and users of the package who provided feedback. We thank Bruna de Paula Fonseca e Fonseca and Priscila Costa Albuquerque for useful discussions on the international academic mobility of Brazilian researchers.

# Funding statement

This work was supported by a scholarship for Leonardo Biazoli funded by the Coordenação de Aperfeiçoamento de Pessoal de Nível Superior - Brazil (CAPES) - Finance Code 001.

# References
