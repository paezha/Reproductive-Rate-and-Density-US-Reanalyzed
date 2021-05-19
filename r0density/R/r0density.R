#' r0density
#'
#' r0density is a companion package for the paper "The importance of reproducibility in COVID-19 research: the case of population density and the basic reproductive number of COVID-19".
#'
#' The package includes the data used in the analysis.
#'
#' @author Antonio Paez, \email{paezha@@mcmaster.ca}
#' @docType package
#' @name r0density
NULL

#' Counties of the United States with relevant covariates.
#'
#' Boundaries of the counties in the United States.
#'
#' @format A simple features data frame with 3,221 rows and 18 variables:
#' \describe{
#'   \item{GEO_ID}{Unique identifier of the county}
#'   \item{STATE}{Code of state}
#'   \item{COUNTY}{Code of county}
#'   \item{NAME.x}{Short name of county}
#'   \item{LSAD}{Code of the Legal/Statistical Area Description}
#'   \item{GEOID}{Unique identifier of the county}
#'   \item{NAME.y}{Longer name of county}
#'   \item{population}{Total population from the 2010 Census (variable P001001)}
#'   \item{area}{Area of county in sq.km}
#'   \item{density}{Population density in 1,000 people per sq.km}
#'   \item{commuters}{ACS 2019 variable B08006_001: Estimate!!Total (SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK)}
#'   \item{car}{ACS 2019 variable B08006_002: Estimate!!Total:!!Car, truck, or van (SEX OF WORKERS BY MEANS OF TRANSPORTATION TO WORK)}
#'   \item{hincome}{ACS 2019 variable B19013_001: Estimate!!Median household income in the past 12 months (in 2019 inflation-adjusted dollars) (MEDIAN HOUSEHOLD INCOME IN THE PAST 12 MONTHS IN 2019 INFLATION-ADJUSTED DOLLARS)}
#'   \item{state}{Two letter code of state (from Sy et al.)}
#'   \item{R}{Basic reproductive number (from Sy et al.)}
#'   \item{R_death}{Basic reproductive number based on deaths (from Sy et al.)}
#'   \item{sensitivitydensity}{Variable used by Sy et al. to indicate observations used in their sensitivity analysis}
#'   \item{geometry}{Geometry of boundaries}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords covid-19
#' @keywords Census
#' @keywords United States
#' @name county_geo
#' @usage data(county_geo)
#' @source US Bureau of Census
#' @source Sy KTL, White LF, Nichols BE (2021) Population density and basic reproductive numberof COVID-19 across United States counties. PLoSONE 16(4):e0249271
"county_geo"
