\name{gaussEstMultiple}
\alias{gaussEstMultiple}
\title{Gaussian Maximum Likelihood on a Matrix}
\description{
    Maximum likelihood estimator for Gaussian model on matrix of values
    (columns having different, independent Gaussian distributions)
}
\usage{
gaussEstMultiple(Y, weights = NULL)
}
\arguments{
  \item{Y}{data matrix}
  \item{weights}{case weights}
}
\value{
A list of beta parameters and BIC
}
\keyword{cluster}
