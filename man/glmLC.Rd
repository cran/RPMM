\name{glmLC}
\alias{glmLC}
\title{Weighted GLM for latent class covariates}
\description{
Wrapper for glm function to incorporate weights corresponding to latent classes 
}
\usage{
glmLC(y,W,family=quasibinomial(),eps=1E-8,Z=NULL)
}
\arguments{
  \item{y}{outcome}
  \item{W}{weight matrix (rows=cases, # rows = length of y)}
  \item{family}{glm family (default = quasibinomial for logistic regression)}
  \item{eps}{threshold below which to delete pseudo-subject corresponding to a specific weight}
  \item{Z}{matrix of additional covariates}
}
\details{
  This function is a wrapper for glm to incorporate weights corresponding to latent classes (e.g. from an RPMM prediction)
}
\value{
  a glm object
}

