\name{glcSplitCriterionBIC}
\alias{glcSplitCriterionBIC}
\title{Gaussian RPMM Split Criterion: Use BIC}
\description{
Split criterion function:  compare BICs to determine split.
}
\usage{
glcSplitCriterionBIC(llike1, llike2, weight, ww, J, level)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{llike1}{one-class likelihood.}
  \item{llike2}{two-class likelihood.}
  \item{weight}{weights from RPMM node.}
  \item{ww}{\dQuote{ww} from RPMM node.}
  \item{J}{Number of items.}
  \item{level}{Node level.}
}
\details{
  This is a function of the form \dQuote{glcSplitCriterion...}, which is required to return a list
  with at least a boolean value \code{split}, along with supporting information.
  See \code{\link{glcTree}} for example of using \dQuote{glcSplitCriterion...} to control split.
}
\value{
  \item{bic1}{one-class (weighted) BIC}
  \item{bic2}{two-class (weighted) BIC}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{glcSplitCriterionBIC}}, 
\code{\link{glcSplitCriterionJustRecordEverything}}, 
\code{\link{glcSplitCriterionLevelWtdBIC}}, 
\code{\link{glcSplitCriterionLRT}}}
\keyword{tree}
\keyword{cluster}

