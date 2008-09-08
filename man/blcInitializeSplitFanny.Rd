\name{blcInitializeSplitFanny}
\alias{blcInitializeSplitFanny}
\title{Initialize Beta Latent Class via Fanny}
\description{
Creates a function for initializing latent class model using the \code{fanny} algorithm
}
\usage{
blcInitializeSplitFanny(nu = 2, nufac = 0.875, metric = "euclidean")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nu}{\code{memb.exp} parameter in \code{fanny}}
  \item{nufac}{Factor by which to multiply \code{nu} if an error occurs}
  \item{metric}{Metric to use for \code{fanny}}
}
\details{
  Creates a function \code{f(x)} that will take a data matrix \code{x} and 
   initialize a weight matrix for a two-class latent class model.
  Here, the \dQuote{fanny} algorithm will be used.
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
A function \code{f(x)} (see Details.)
}
\seealso{\code{\link{blcInitializeSplitDichotomizeUsingMean}}, 
\code{\link{blcInitializeSplitEigen}}, 
\code{\link{blcInitializeSplitHClust}}}
\keyword{tree}
\keyword{cluster}
