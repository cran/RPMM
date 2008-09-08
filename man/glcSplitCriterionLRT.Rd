\name{glcSplitCriterionLRT}
\alias{glcSplitCriterionLRT}
\title{Gaussian RPMM Split Criterion: Use likelihood ratio test p value}
\description{
Split criterion function:  use likelihood ratio test p value to determine split.
}
\usage{
glcSplitCriterionLRT(llike1, llike2, weight, ww, J, level)
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
  \item{llike1}{Just returns \code{llike1}}
  \item{llike2}{Just returns \code{llike2}}
  \item{J}{Just returns \code{J}}
  \item{weight}{Just returns \code{weight}}
  \item{degFreedom}{Degrees-of-freedom for LRT}  
  \item{chiSquareStat}{Chi-square statistic}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{glcSplitCriterionBIC}}, 
\code{\link{glcSplitCriterionBICICL}}, 
\code{\link{glcSplitCriterionJustRecordEverything}}, 
\code{\link{glcSplitCriterionLevelWtdBIC}}}
\keyword{tree}
\keyword{cluster}
