\name{blcSplitCriterionLRT}
\alias{blcSplitCriterionLRT}
\title{Beta RPMM Split Criterion: use likelihood ratio test p value}
\description{
Split criterion function:  Use likelihood ratio test p value to determine split.
}
\usage{
blcSplitCriterionLRT(llike1, llike2, weight, ww, J, level)
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
  This is a function of the form \dQuote{blcSplitCriterion...}, which is required to return a list
  with at least a boolean value \code{split}, along with supporting information.
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
  \item{llike1}{Just returns \code{llike1}}
  \item{llike2}{Just returns \code{llike2}}
  \item{J}{Just returns \code{J}}
  \item{weight}{Just returns \code{weight}}
  \item{degFreedom}{Degrees-of-freedom for LRT}  
  \item{chiSquareStat}{Chi-square statistic}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{blcSplitCriterionBIC}}, 
\code{\link{blcSplitCriterionBICICL}}, 
\code{\link{blcSplitCriterionJustRecordEverything}}, 
\code{\link{blcSplitCriterionLevelWtdBIC}}}
\keyword{tree}
\keyword{cluster}
