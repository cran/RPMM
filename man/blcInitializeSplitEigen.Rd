\name{blcInitializeSplitEigen}
\alias{blcInitializeSplitEigen}
\title{Initialize Gaussian Latent Class via Eigendecomposition}
\description{
Creates a function for initializing latent class model based on Eigendecomposition
}
\usage{
blcInitializeSplitEigen(eigendim = 1, 
    assignmentf = function(s) (rank(s) - 0.5)/length(s))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{eigendim}{How many eigenvalues to use}
  \item{assignmentf}{assignment function for transforming eigenvector to weight}
}
\details{
  Creates a function \code{f(x)} that will take a data matrix \code{x} and 
   initialize a weight matrix for a two-class latent class model.
  Here, the initialized classes will be based on eigendecomposition of the variance of \code{x}.
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
A function \code{f(x)} (see Details.)
}
\seealso{\code{\link{blcInitializeSplitDichotomizeUsingMean}}, 
\code{\link{glcInitializeSplitFanny}}, 
\code{\link{glcInitializeSplitHClust}}}
\keyword{tree}
\keyword{cluster}
