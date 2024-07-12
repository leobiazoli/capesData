#' Data on Scholarships in CAPES International Mobility Programs
#'
#' The goal of capesData is to provide an attractive dataset for exploring and visualizing data on the International Mobility Programs funded by CAPES/Brazil. The CAPES database refers to international mobility programs for the period from 2010 to 2019.
#'
#' @format A data frame with 146036 rows and 14 columns:
#' \describe{
#' \item{ID_PROCESSO}{Number of concession process.}
#' \item{NM_NIVEL}{Type of scholarship.}
#' \item{AN_INICIO}{Year in which the scholarship begins.}
#' \item{ME_INICIO}{Month in which the scholarship begins.}
#' \item{AN_FIM}{End year of the scholarship.}
#' \item{ME_FIM}{End month of the scholarship.}
#' \item{NM_IES_ORIGEM_PRINCIPAL_DA}{Name of the beneficiary's home institution.}
#' \item{NM_UF_IES_ORIGEM}{Name of the Federation State of the beneficiary's institution of origin.}
#' \item{NM_IES_ESTUDO_PRINCIPAL_DA}{Name of the beneficiary's study institution.}
#' \item{NM_PAIS_IES_ESTUDO}{Country of destination of the beneficiary.}
#' \item{NM_GRANDE_AREA}{Field of knowledge.}
#' \item{NM_AREA_CONHECIMENTO}{Area of knowledge classified by CAPES.}
#' \item{NM_AREA_AVALIACAO}{Area of project evaluation.}
#' \item{NM_PROGRAMA}{Program Name.}
#' }
#' @source Created by Leonardo Biazoli with data provided by CAPES/BRAZIL <https://dadosabertos.capes.gov.br/dataset/>.
#' @seealso [capesData_raw]
#'
#' @examples
#' capesData
"capesData"
