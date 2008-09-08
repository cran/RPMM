\name{betaObjf}
\alias{betaObjf}
\title{Beta Maximum Likelihood Objective Function}
\description{
Objective function for fitting a beta model using maximum likelihood
}
\usage{
betaObjf(logab, ydata, wdata, weights)
}
\arguments{
  \item{logab}{log(a,b) parameters}
  \item{ydata}{data vector}
  \item{wdata}{posterior weights}
  \item{weights}{case weights}
}
\details{
  Typically not be called by user.
}
\value{
negative log-likelihood
}
\keyword{cluster}
