#' Linear regression summary
#'
#' This function performs a linear regression and returns a summary including:
#' - Adjusted R-squared
#' - Overall F-test p-value
#' - Table with parameter estimates, confidence intervals (default 99%), p-values, and significance stars (*, **, ***)
#'
#' @param formula A formula like Y ~ X1 + X2
#' @param data A data frame
#' @param level Confidence level (default 0.99)
#' @return Object of class 'linear_regress'
#' 
#' @importFrom stats lm confint pf
#'
#' @examples
#' data(Housing, package = "IPAG")
#' linear_regress(MEDV ~ RM + LSTAT, data = Housing)
#' 
#' @export

linear_regress <- function(formula, data, level = 0.99) {
  if (!inherits(formula, "formula")) stop("formula must be a formula")
  if (!is.data.frame(data)) stop("data must be a data frame")
  if (level <= 0 || level >= 1) stop("level must be in (0,1)")

  fit <- lm(formula, data = data)
  summ <- summary(fit)
  coefs <- summ$coefficients

  adj_r2 <- summ$adj.r.squared
  f_pval <- pf(summ$fstatistic[1], summ$fstatistic[2], summ$fstatistic[3], lower.tail = FALSE)
  ci <- confint(fit, level = level)

  stars <- rep("", nrow(coefs))
  stars[coefs[, 4] < 0.05] <- "*"
  stars[coefs[, 4] < 0.01] <- "**"
  stars[coefs[, 4] < 0.001] <- "***"

  fmt <- function(x) formatC(x, digits = 4, format = "f", decimal.mark = ".")
  ci_col <- paste0("[", fmt(ci[,1]), " ; ", fmt(ci[,2]), "]")

  tab <- data.frame(
    Variable = rownames(coefs),
    Estimate = fmt(coefs[,1]),
    CI = ci_col,
    p_value = fmt(coefs[,4]),
    Signif = stars,
    row.names = NULL,
    stringsAsFactors = FALSE
  )

  structure(
    list(
      adj_r2 = adj_r2,
      f_pvalue = f_pval,
      table = tab
    ),
    class = "linear_regress"
  )
}

#' @export
#' @method print linear_regress
print.linear_regress <- function(x, ...) {
  cat(sprintf("Adjusted R^2: %.4f\n", x$adj_r2))
  cat(sprintf("Overall F-test p-value: %.4g\n\n", x$f_pvalue))
  print(x$table, row.names = FALSE)
}

