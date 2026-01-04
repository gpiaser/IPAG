#' Confidence interval for a proportion
#'
#' @param trials Number of trials
#' @param successes Number of successes
#' @param level Confidence level (default 0.99)
#' @return Object of class 'prop_ci'
#' @importFrom stats binom.test
#' @examples
#' # 45 successes out of 100 trials
#' prop_ci(trials = 100, successes = 45)
#' prop_ci(trials = 100, successes = 45, level = 0.95)

#' @export
prop_ci <- function(trials, successes, level = 0.99) {
  
  if (!is.numeric(successes) || !is.numeric(trials)) stop("successes and trials must be numeric")
  if (length(successes) != 1 || length(trials) != 1) stop("successes and trials must be scalars")
  if (successes < 0 || successes > trials || trials <= 0) stop("0 <= successes <= trials")
  if (level <= 0 || level >= 1) stop("level must be in (0, 1)")
  
  res <- binom.test(successes, trials, conf.level = level)
  
  structure(
    res$conf.int,
    level = level,
    class = "prop_ci"
  )
}

#' @export
print.prop_ci <- function(x, ...) {
  cat(sprintf(
    "%.0f%% CI for true proportion: [%.4f, %.4f]\n",
    attr(x, "level") * 100,
    x[1],
    x[2]
  ))
}
