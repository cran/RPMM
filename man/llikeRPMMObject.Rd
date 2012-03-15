\name{llikeRPMMObject}
\alias{llikeRPMMObject}
\title{Data log-likelihood implied by a specific RPMM model}
\description{
Data log-likelihood implied by a specific RPMM model 
}
\usage{
llikeRPMMObject(o, x, type)
}
\arguments{
  \item{o}{RPMM object}
  \item{x}{Data matrix}
  \item{type}{RPMM type ("blc" or "glc")}
}
\details{
  Typically not be called by user.
}
\value{
  Vector of loglikelihoods corresponding to rows of \code{x}.
}

