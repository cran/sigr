% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BinomTest.R
\name{wrapBinomTest.data.frame}
\alias{wrapBinomTest.data.frame}
\title{Wrap binom.test (test of Binomial/Bernoulli rate).}
\usage{
\method{wrapBinomTest}{data.frame}(
  x,
  ColumnName,
  SuccessValue = TRUE,
  ...,
  p = NA,
  alternative = c("two.sided", "less", "greater"),
  conf.level = 0.95,
  na.rm = FALSE
)
}
\arguments{
\item{x}{data.frame}

\item{ColumnName}{character name of measurment column}

\item{SuccessValue}{value considered a success (positive)}

\item{...}{extra arguments passed to binom.test}

\item{p}{number, hypothesized probability of success.}

\item{alternative}{passed to \code{\link[stats]{binom.test}}}

\item{conf.level}{passed to \code{\link[stats]{binom.test}}}

\item{na.rm}{logical, if TRUE remove NA values}
}
\value{
wrapped stat
}
\description{
Wrap binom.test (test of Binomial/Bernoulli rate).
}
\examples{

d <- data.frame(x = c(rep(0, 3), rep(1, 7)))
wrapBinomTest(d, "x", 1, p = 0.5)
d <- data.frame(x = c(rep(0, 15), rep(1, 35)))
wrapBinomTest(d, "x", 1, p = 0.5)


}
\seealso{
\code{\link{wrapBinomTest}}, \code{\link{wrapBinomTest.htest}}, \code{\link{wrapBinomTestS}}, \code{\link{wrapBinomTest.logical}}, \code{\link{wrapBinomTest.numeric}}, \code{\link{wrapBinomTest.data.frame}}
}
