% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FTest.R
\name{wrapFTest.data.frame}
\alias{wrapFTest.data.frame}
\title{Wrap quality statistic of identity relation from data.}
\usage{
\method{wrapFTest}{data.frame}(
  x,
  predictionColumnName,
  yColumnName,
  nParameters = 1,
  meany = mean(x[[yColumnName]]),
  ...,
  na.rm = FALSE,
  format = NULL
)
}
\arguments{
\item{x}{data frame containing columns to compare}

\item{predictionColumnName}{character name of prediction column}

\item{yColumnName}{character name of column containing dependent variable}

\item{nParameters}{number of variables in model}

\item{meany}{(optional) mean of y}

\item{...}{extra arguments (not used)}

\item{na.rm}{logical, if TRUE remove NA values}

\item{format}{if set the format to return ("html", "latex", "markdown", "ascii", "docx")}
}
\value{
formatted string and fields
}
\description{
Wrap quality statistic of identity relation from data.
}
\examples{

d <- data.frame(x=c(1,2,3,4,5,6,7,7),
                y=c(1,1,2,2,3,3,4,4))
model <- lm(y~x,data=d)
summary(model)
d$pred <- predict(model,newdata=d)
sigr::wrapFTest(d,'pred','y')

}
