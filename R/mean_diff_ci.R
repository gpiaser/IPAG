#' Confidence interval for the difference of means
#'
#' @param x Numeric vector
#' @param y Numeric vector
#' @param level Confidence level (default 0.99)
#' @param paired Logical; are the samples paired?
#' @param na.rm Remove NA values
#' @return Object of class 'mean_diff_ci'
#' @importFrom stats t.test
#' @examples
#' x <- c(5.1, 4.9, 6.2, 5.8, 5.4)
#' y <- c(4.8, 4.7, 5.9, 5.2, 5.0)
#' mean_diff_ci(x, y)
#' mean_diff_ci(x, y, paired = TRUE)
#' @export
mean_diff_ci <- function(x, y, level = 0.99, paired = FALSE, na.rm = TRUE) {

  if (!is.numeric(x) || !is.numeric(y)) stop("x and y must be numeric")
  if (level <= 0 || level >= 1) stop("level must be in (0, 1)")

  if (na.rm) {
    x <- x[!is.na(x)]
    y <- y[!is.na(y)]
  }
  if (length(x) < 2 || length(y) < 2) stop("x and y must each have at least two values")

  res <- t.test(x, y, conf.level = level, paired = paired)

  structure(
    res$conf.int,
    estimate = unname(res$estimate),
    level = level,
    paired = paired,
    class = "mean_diff_ci"
  )
}

#' @export
print.mean_diff_ci <- function(x, ...) {
  label <- if (attr(x, "paired")) "paired mean difference" else "mean difference (x - y)"
  cat(sprintf(
    "%.0f%% CI for %s: [%.4f, %.4f]\n",
    attr(x, "level") * 100,
    label,
    x[1],
    x[2]
  ))
}
