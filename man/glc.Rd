\name{glc}
\alias{glc}
\title{Gaussian Finite Mixture Model}
\description{
Fits a Gaussian mixture model for any number of classes
}
\usage{
glc(Y, w, maxiter = 100, tol = 1e-06, weights = NULL, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Y}{Data matrix (n x j) on which to perform clustering}
  \item{w}{Initial weight matrix (n x k) representing classification}
  \item{maxiter}{Maximum number of EM iterations}
  \item{tol}{Convergence tolerance}
  \item{weights}{Case weights}
  \item{verbose}{Verbose output?}
}
\details{
  Typically not be called by user.
}
\value{
A list of parameters representing mixture model fit, including posterior weights and log-likelihood
}
\keyword{cluster}
