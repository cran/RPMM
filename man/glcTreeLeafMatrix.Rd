\name{glcTreeLeafMatrix}
\alias{glcTreeLeafMatrix}
\title{Posterior Weight Matrix for Gaussian RPMM}
\description{
Gets a matrix of posterior class membership weights for terminal nodes.
}
\usage{
glcTreeLeafMatrix(tr, rounding = 3)
}
\arguments{
  \item{tr}{Tree from which to create matrix.}
  \item{rounding}{Digits to round.}
}
\details{
  See \code{\link{glcTree}} for example.
}

\value{
  N x K matrix of posterior weights
}
\seealso{\code{\link{glcTreeLeafClasses}} }
\keyword{tree}
\keyword{cluster}
