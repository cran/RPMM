\name{blcSplitCriterionJustRecordEverything}
\alias{blcSplitCriterionJustRecordEverything}
\title{Beta RPMM Split Criterion: Always Split and Record Everything}
\description{
Split criterion function: always split, but record everything as you go.
}
\usage{
blcSplitCriterionJustRecordEverything(llike1, llike2, weight, ww, J, level)
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
  This function ALWAYS returns \code{split=TRUE}.  Useful for gathering information.
  It is recommended that you set the \code{maxlev} argument in the main function to something
  less than infinity (say, 3 or 4).
  See \code{\link{blcTree}} for example of using \dQuote{blcSplitCriterion...} to control split.
}
\value{
  \item{llike1}{Just returns \code{llike1}}
  \item{llike2}{Just returns \code{llike2}}
  \item{J}{Just returns \code{J}}
  \item{weight}{Just returns \code{weight}}
  \item{ww}{Just returns \code{ww}}
  \item{degFreedom}{Degrees-of-freedom for LRT}  
  \item{chiSquareStat}{Chi-square statistic}
  \item{split}{\code{TRUE}=split the node, \code{FALSE}=do not split the node.}
 }
\seealso{
\code{\link{blcSplitCriterionBIC}}, 
\code{\link{blcSplitCriterionBICICL}}, 
\code{\link{blcSplitCriterionLevelWtdBIC}}, 
\code{\link{blcSplitCriterionLRT}}}
\keyword{tree}
\keyword{cluster}
