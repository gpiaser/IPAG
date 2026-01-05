# IPAG

The IPAG package provides a set of simple and pedagogical tools for statistical
inference in R. It focuses on confidence intervals and concise linear regression
summaries, with clear defaults and readable outputs.

The package is primarily intended for teaching purposes and applied work in
economics, social sciences, and related fields.

## Overview

IPAG provides wrapper functions around standard R statistical procedures,
including:

- Student *t* tests for means and differences in means
- Exact binomial confidence intervals for proportions
- Confidence intervals for odds ratios from 2×2 contingency tables
  based on Fisher’s exact test
- Linear regression summaries based on ordinary least squares

All confidence intervals are computed at the 99% level by default, with the
option to specify alternative confidence levels.

## Installation

You can install the development version of IPAG from GitHub:

```r
# install.packages("remotes")
remotes::install_github("gpiaser/IPAG")
```

Once available on CRAN, you will be able to install it with:

```r
install.packages("IPAG")
```

## Usage

### Confidence intervals for a mean

`mean_ci()` computes a confidence interval for a population mean using a Student
t test.

```r
library(IPAG)
x <- c(4.2, 5.1, 6.3, 5.8, 4.9)
mean_ci(x)
```

### Difference in means

`mean_diff_ci()` computes a confidence interval for the difference in means
between two samples, either independent or paired.

```r
x <- c(5.1, 4.9, 6.2, 5.8, 5.4)
y <- c(4.8, 4.7, 5.9, 5.2, 5.0)
mean_diff_ci(x, y)
```

### Proportion
`prop_ci()` computes an exact confidence interval for a population proportion
using binom.test()`.

```r
prop_ci(trials = 100, successes = 45)
```
### Odds ratio
`oddsratio_ci()` computes an exact confidence interval for the odds ratio from a
2x2 contingency table, based on Fisher's exact test.

```r
oddsratio_ci(a = 12, b = 5, c = 4, d = 15)
```

### Linear regression

`linear_regress()` provides a concise summary of a linear regression fitted with
`lm()`. It reports the adjusted R-squared, the p-value of the overall Fisher test,
and a table of estimated coefficients with confidence intervals and significance
indicators.

```r
data(Housing)
linear_regress(MEDV ~ RM + LSTAT, data = Housing)
```
## Datasets

The package includes several datasets commonly used for illustration and teaching:

- `Housing` — hedonic housing prices (Harrison and Rubinfeld, 1978)
- `Beauty` — teaching evaluations and perceived attractiveness
- `McKinsey` — teacher compensation and student performance
- `ContentMarketing` — determinants of content marketing effectiveness
- `Bosnia` — microcredit program data from Bosnia and Herzegovina, used for impact evaluation
- `covid19` — cross-country COVID-related indicators

Each dataset is documented and can be loaded using data().

## Design principles

### Transparency

All functions rely on well-established R functions such as
`t.test()`, `binom.test()`, `lm()`, and `fisher.test()`.

### Consistency

Functions computing confidence intervals follow a consistent naming convention
and return objects with simple S3 print methods.

### Readability

Outputs are designed to be interpretable without requiring advanced knowledge
of R object internals.

### Intended use

IPAG is designed for instructional and applied contexts where clarity and
interpretability are prioritized over extensibility or computational efficiency.
It is not intended as a substitute for more comprehensive statistical packages.

## License
This package is distributed under the MIT License.

