#' Confidence interval for a mean
#'
#' @param x Numeric vector
#' @param level Confidence level (default 0.99)
#' @param na.rm Remove NA values
#' @return Object of class 'mean_ci'
#' @importFrom stats t.test
#' @examples
#' x <- c(4.2, 5.1, 6.3, 5.8, 4.9)
#' mean_ci(x)
#' mean_ci(x, level = 0.95)
#' @export
mean_ci <- function(x, level = 0.99, na.rm = TRUE) {

  if (!is.numeric(x)) stop("x must be numeric")
  if (level <= 0 || level >= 1) stop("level must be in (0, 1)")

  if (na.rm) x <- x[!is.na(x)]
  if (length(x) < 2) stop("x must have at least two values")

  res <- t.test(x, conf.level = level)

  structure(
    res$conf.int,
    estimate = mean(x),
    level = level,
    class = "mean_ci"
  )
}

#' @export
print.mean_ci <- function(x, ...) {
  cat(sprintf(
    "%.0f%% CI for mean: [%.4f, %.4f]\n",
    attr(x, "level") * 100,
    x[1],
    x[2]
  ))
}
