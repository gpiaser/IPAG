#' Confidence interval for odds ratio from a 2x2 table
#'
#' @param a,b,c,d Cell counts of the 2x2 contingency table
#' @param level Confidence level (default 0.99)
#' @return Object of class 'oddsratio_ci'
#' @examples
#' oddsratio_ci(a = 12, b = 5, c = 4, d = 15)
#' oddsratio_ci(a = 12, b = 5, c = 4, d = 15, level = 0.95)
#' @export
oddsratio_ci <- function(a, b, c, d, level = 0.99) {

  counts <- c(a, b, c, d)
  if (!all(is.numeric(counts)) || any(counts < 0)) {
    stop("a, b, c, d must be non-negative numeric values")
  }
  if (level <= 0 || level >= 1) {
    stop("level must be in (0, 1)")
  }

  mat <- matrix(c(a, b, c, d), nrow = 2, byrow = TRUE)

  res <- stats::fisher.test(
    mat,
    conf.int = TRUE,
    conf.level = level
  )

  structure(
    res$conf.int,
    estimate = unname(res$estimate),
    level = level,
    table = mat,
    class = "oddsratio_ci"
  )
}

#' @export
print.oddsratio_ci <- function(x, ...) {
  cat(sprintf(
    "%.0f%% CI for odds ratio: [%.4f, %.4f]\n",
    attr(x, "level") * 100,
    x[1],
    x[2]
  ))
}

