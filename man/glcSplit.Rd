\name{glcSplit}
\alias{glcSplit}
\title{Gaussian Latent Class Splitter}
\description{
Splits a data set into two via a Gaussian mixture models
}
\usage{
glcSplit(x, initFunctions, weight = NULL, index = NULL, level =
                 0, wthresh = 1e-09, verbose = TRUE, nthresh = 5,
                 splitCriterion = glcSplitCriterionBIC)
}
\arguments{
  \item{x}{Data matrix (n x j) on which to perform clustering}
  \item{initFunctions}{List of functions of type \dQuote{glcInitialize...} for initializing latent class model.
See \code{glcInitializeFanny} for an example of arguments and return values.}
  \item{weight}{Weight corresponding to the indices passed (see \code{index}). Defaults to 1 for all indices}
  \item{index}{Row indices of data matrix to include. Defaults to all (1 to n).}
  \item{level}{ ~~Describe \code{level} here~~ }
  \item{wthresh}{Weight threshold for filtering data to children. 
  Indices having weight less than this value will not be passed to children nodes.}
  \item{verbose}{Level of verbosity.  Default=2 (too much).  0 for quiet.}
  \item{nthresh}{Total weight in node required for node to be a candidate for splitting.  
Nodes with weight less than this value will never split.}
  \item{splitCriterion}{Function of type \dQuote{glcSplitCriterion...} for determining whether split should occur.
See \code{glcSplitCriterionBIC} for an example of arguments and return values.}
}
\details{
  Should not be called by user.
}
\value{
A list of objects representing split.
}
\keyword{cluster}
\keyword{tree}
