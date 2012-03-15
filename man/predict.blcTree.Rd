\name{predict.blcTree}
\alias{predict.blcTree}
\title{Predict using a Beta RPMM object}
\description{
Prediction method for objects of type blcTree
}
\usage{
\method{predict}{blcTree}(object, newdata=NULL, nodelist=NULL, type="weight",...)
}
\arguments{
  \item{object}{RPMM object to print}
  \item{newdata}{external data matrix from which to apply predictions}
  \item{nodelist}{RPMM subnode to use (default = root)}
  \item{type}{output type: "weight" produces output similar to \code{\link{blcTreeLeafMatrix}}, "class" produces output similar to \code{\link{blcTreeLeafClasses}}.}
  \item{\dots}{(Unused).}
}
\details{
  This function is similar to \code{\link{blcTreeLeafMatrix}} and \code{\link{blcTreeLeafClasses}}, except that it supports prediction on an external data set via the argument \code{newdata}.
}
\seealso{\code{\link{blcTreeLeafMatrix}} }
\keyword{tree}
\keyword{cluster}

