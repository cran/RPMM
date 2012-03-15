\name{ebayes}
\alias{ebayes}
\title{Empirical Bayes predictions for a specific RPMM model}
\description{
Empirical Bayes predictions for a specific RPMM model 
}
\usage{
ebayes(rpmm, x, type, nodelist=NULL)
}
\arguments{
  \item{rpmm}{RPMM object}
  \item{x}{Data matrix}
  \item{type}{RPMM type ("blc" or "glc")}
  \item{nodelist}{RPMM subnode to use (default = root)}
}
\details{
  Typically not be called by user.
}
\value{
  Matrix of empirical bayes predictions corresponding to \code{x}.
}

