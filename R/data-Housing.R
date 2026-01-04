#' Hedonic housing prices and environmental quality
#'
#' Dataset from Harrison Jr, D., & Rubinfeld, D. L. (1978),
#' "Hedonic housing prices and the demand for clean air",
#' Journal of Environmental Economics and Management, 5(1), 81–102.
#'
#' The dataset is a cross-section of housing values in Boston suburbs and is
#' widely used to study hedonic pricing models and the demand for environmental quality.
#'
#' @format A data frame with the following variables:
#' \describe{
#'   \item{CRIM}{Per capita crime rate by town.}
#'   \item{ZN}{Proportion of residential land zoned for lots over 25,000 square feet.}
#'   \item{INDUS}{Proportion of non-retail business acres per town.}
#'   \item{CHAS}{Charles River dummy variable:
#'   1 if the tract bounds the river, 0 otherwise.}
#'   \item{NOX}{Nitric oxides concentration (parts per 10 million).}
#'   \item{RM}{Average number of rooms per dwelling.}
#'   \item{AGE}{Proportion of owner-occupied units built prior to 1940.}
#'   \item{DIS}{Weighted distances to five Boston employment centres.}
#'   \item{RAD}{Index of accessibility to radial highways.}
#'   \item{TAX}{Full-value property tax rate per $10,000.}
#'   \item{PTRATIO}{Pupil–teacher ratio by town.}
#'   \item{B}{Computed as \eqn{1000(B_k - 0.63)^2}, where \eqn{B_k} is the proportion
#'   of Black residents by town.}
#'   \item{LSTAT}{Percentage of lower-status population.}
#'   \item{MEDV}{Median value of owner-occupied homes in thousands of US dollars.}
#' }
#'
#' @usage data(Housing)
#' @source Harrison Jr, D., & Rubinfeld, D. L. (1978).
#' Hedonic housing prices and the demand for clean air.
#' Journal of Environmental Economics and Management, 5(1), 81–102.
#' \doi{10.1016/0095-0696(78)90006-2}
"Housing"

