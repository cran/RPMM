\name{blcInitializeSplitHClust}
\alias{blcInitializeSplitHClust}
\title{Initialize Beta Latent Class via Hierarchical Clustering}
\description{
Creates a function for initializing latent class model using hierarchical clustering.
}
\usage{
blcInitializeSplitHClust(metric = "manhattan", method = "ward")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{metric}{Dissimilarity metric used for hierarchical clustering}
  \item{method}{Linkage method used for hierarchical clustering}
}
\details{
  Creates a function \code{f(x)} that will take a data matrix \code{x} and 
   initialize a weight matrix for a two-class latent class model.
  Here, a two-branch split from hierarchical clustering will be used.
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
A function \code{f(x)} (see Details.)
}
\seealso{\code{\link{blcInitializeSplitDichotomizeUsingMean}}, 
\code{\link{blcInitializeSplitEigen}}, 
\code{\link{blcInitializeSplitFanny}}}
\keyword{tree}
\keyword{cluster}

