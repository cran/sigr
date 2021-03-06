% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CohenD.R
\name{wrapCohenD.numeric}
\alias{wrapCohenD.numeric}
\title{Wrap Cohen's D (effect size between groups).}
\usage{
\method{wrapCohenD}{numeric}(x, treatment, ..., na.rm = FALSE)
}
\arguments{
\item{x}{numeric reference or control measurements}

\item{treatment}{numeric treatment or group-2 measurements}

\item{...}{extra arguments (not used)}

\item{na.rm}{if TRUE remove NAs}
}
\value{
formatted string and fields
}
\description{
Wrap Cohen's D (effect size between groups).
}
\examples{

d <- data.frame(x = c(1,1,2,2,3,3,4,4),
                y = c(1,2,3,4,5,6,7,7))
render(wrapCohenD(d$x, d$y))

}
