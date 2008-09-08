\name{blcSplitCriterionLevelWtdBIC}
\alias{blcSplitCriterionLevelWtdBIC}
\title{Beta RPMM Split Criterion:  Level-Weighted BIC}
\description{
Split criterion function: use a level-weighted version of BIC to determine split; there is an additional penalty incorporated for deep recursion.
}
\usage{
blcSplitCriterionLevelWtdBIC(llike1, llike2, weight, ww, J, level)
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
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
  \item{bic1}{One-class BIC, with additional penalty for deeper levels}
  \item{bic2}{Two-class BIC, with additional penalty for deeper levels}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{blcSplitCriterionBIC}}, 
\code{\link{blcSplitCriterionBICICL}}, 
\code{\link{blcSplitCriterionJustRecordEverything}}, 
\code{\link{blcSplitCriterionLRT}}}
\keyword{tree}
\keyword{cluster}
