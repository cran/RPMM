\name{blcTreeLeafMatrix}
\alias{blcTreeLeafMatrix}
\title{Posterior Weight Matrix for Beta RPMM}
\description{
Gets a matrix of posterior class membership weights for terminal nodes.
}
\usage{
blcTreeLeafMatrix(tr, rounding = 3)
}
\arguments{
  \item{tr}{Tree from which to create matrix.}
  \item{rounding}{Digits to round.}
}
\details{
  See \code{\link{blcTree}} for example.
}

\value{
  N x K matrix of posterior weights
}
\seealso{\code{\link{blcTreeLeafClasses}} }
\keyword{tree}
\keyword{cluster}
