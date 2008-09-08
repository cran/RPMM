\name{betaEstMultiple}
\alias{betaEstMultiple}
\title{Beta Maximum Likelihood on a Matrix}
\description{
    Maximum likelihood estimator for beta model on matrix of values
    (columns having different, independent beta distributions)
}
\usage{
betaEstMultiple(Y, weights = NULL)
}
\arguments{
  \item{Y}{data matrix}
  \item{weights}{case weights}
}
\value{
A list of beta parameters and BIC
}
\keyword{cluster}
