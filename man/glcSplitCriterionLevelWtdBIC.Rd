\name{glcSplitCriterionLevelWtdBIC}
\alias{glcSplitCriterionLevelWtdBIC}
\title{Gaussian RPMM Split Criterion:  Level-Weighted BIC}
\description{
Split criterion function: use a level-weighted version of BIC to determine split; there is an additional penalty incorporated for deep recursion.
}
\usage{
glcSplitCriterionLevelWtdBIC(llike1, llike2, weight, ww, J, level)
}
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
  \item{bic1}{One-class BIC, with additional penalty for deeper levels}
  \item{bic2}{Two-class BIC, with additional penalty for deeper levels}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{glcSplitCriterionBIC}}, 
\code{\link{glcSplitCriterionBICICL}}, 
\code{\link{glcSplitCriterionJustRecordEverything}}, 
\code{\link{glcSplitCriterionLRT}}}
\keyword{tree}
\keyword{cluster}
