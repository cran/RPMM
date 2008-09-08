\name{blcTreeOverallBIC}
\alias{blcTreeOverallBIC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Overall BIC for Entire RPMM Tree (Beta version) }
\description{
Computes the BIC for the latent class model represented by terminal nodes
}
\usage{
blcTreeOverallBIC(tr, ICL = FALSE)
}
\arguments{
  \item{tr}{Tree object on which to compute BIC}
  \item{ICL}{Include ICL entropy term?}
}
\value{
BIC or BIC-ICL.
}
\keyword{tree}
\keyword{cluster}
