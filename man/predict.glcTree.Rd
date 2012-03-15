\name{predict.glcTree}
\alias{predict.glcTree}
\title{Predict using a Gaussian RPMM object}
\description{
Prediction method for objects of type glcTree
}
\usage{
\method{predict}{glcTree}(object, newdata=NULL, nodelist=NULL, type="weight",...)
}
\arguments{
  \item{object}{RPMM object to print}
  \item{newdata}{external data matrix from which to apply predictions}
  \item{nodelist}{RPMM subnode to use (default = root)}
  \item{type}{output type: "weight" produces output similar to \code{\link{glcTreeLeafMatrix}}, "class" produces output similar to \code{\link{glcTreeLeafClasses}}.}
  \item{\dots}{(Unused).}
}
\details{
  This function is similar to \code{\link{glcTreeLeafMatrix}} and \code{\link{glcTreeLeafClasses}}, except that it supports prediction on an external data set via the argument \code{newdata}.
}
\seealso{\code{\link{glcTreeLeafMatrix}} }
\keyword{tree}
\keyword{cluster}
