\name{glcInitializeSplitHClust}
\alias{glcInitializeSplitHClust}
\title{Initialize Gaussian Latent Class via Hierarchical Clustering}
\description{
Creates a function for initializing latent class model using hierarchical clustering.
}
\usage{
glcInitializeSplitHClust(metric = "manhattan", method = "ward")
}
\arguments{
  \item{metric}{Dissimilarity metric used for hierarchical clustering}
  \item{method}{Linkage method used for hierarchical clustering}
}
\details{
  Creates a function \code{f(x)} that will take a data matrix \code{x} and 
   initialize a weight matrix for a two-class latent class model.
  Here, a two-branch split from hierarchical clustering will be used.
See \code{\link{glcTree}} for example of using \dQuote{glcInitializeSplit...} to create starting values.
}
\value{
A function \code{f(x)} (see Details.)
}
\seealso{\code{\link{glcInitializeSplitEigen}}, 
\code{\link{glcInitializeSplitFanny}}}
\keyword{tree}
\keyword{cluster}

