\name{blcInitializeSplitDichotomizeUsingMean}
\alias{blcInitializeSplitDichotomizeUsingMean}
\title{Initialize Gaussian Latent Class via Mean Dichotomization}
\description{
Creates a function for initializing latent class model by dichotomizing via mean over all responses
}
\usage{
blcInitializeSplitDichotomizeUsingMean(threshold = 0.5, fuzz = 0.95)
}
\arguments{
  \item{threshold }{Mean threshold for determining class}
  \item{fuzz}{\dQuote{fuzz} factor for producing imperfectly clustered subjects}
}
\details{
  Creates a function \code{f(x)} that will take a data matrix \code{x} and 
   initialize a weight matrix for a two-class latent class model.
  Here, a simple threshold will be applied to the mean over all item responses.
See \code{\link{blcTree}} for example of using \dQuote{blcInitializeSplit...} to create starting values.
}
\value{
A function \code{f(x)} (see Details.)
}
\seealso{\code{\link{glcInitializeSplitFanny}}, 
\code{\link{glcInitializeSplitHClust}}}
\keyword{tree}
\keyword{cluster}

