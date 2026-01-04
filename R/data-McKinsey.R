#' McKinsey / OECD Education Dataset
#'
#' Dataset combining information from:
#' - McKinsey, "Valuing the merit of teachers", Direction interministérielle de la transformation publique.
#' - OECD (2012), "Does Performance-Based Pay Improve Teaching?", PISA in Focus, No. 16, OECD Publishing, Paris.
#'
#' The dataset contains teacher efficiency as measured by reading performance on PISA tests,
#' along with explanatory variables related to salary, GDP, expenditures, and performance-based pay.
#'
#' @format A data frame with the following variables:
#' \describe{
#'   \item{COUNTRIES}{The name of the country.}
#'   \item{READING}{Teacher efficiency measured by PISA reading tests.}
#'   \item{YSALARY}{Teacher salaries in relation to GDP per capita.
#'     0 means salaries equal GDP per capita, 0.5 means 1.5 times higher than GDP per capita,
#'     1 means 2 times higher than GDP per capita.}
#'   \item{YGDP}{GDP per capita in USD 1,000.}
#'   \item{EXPEND}{Cumulative expenditure by educational establishments in USD 1,000.}
#'   \item{PERF}{Teacher merit pay (y = yes, n = no).}
#' }
#'
#' @usage data(McKinsey)
#' @source 
#' - McKinsey, "Valuing the merit of teachers", Direction interministérielle de la transformation publique.
#' - OECD (2012), "Does Performance-Based Pay Improve Teaching?", PISA in Focus, No. 16, OECD Publishing, Paris, \doi{10.1787/5k98q27r2stb-en}
"McKinsey"

