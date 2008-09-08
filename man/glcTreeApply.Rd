\name{glcTreeApply}
\alias{glcTreeApply}
\title{Recursive Apply Function for Gaussian RPMM Objects}
\description{
Recursively applies a function down the nodes of a Gaussian RPMM tree.
}
\usage{
glcTreeApply(tr, f, start = "root", terminalOnly = FALSE, 
   asObject = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tr}{Tree object to recurse}
  \item{f}{Function to apply to every node}
  \item{start}{Starting node.  Default = \dQuote{root}.}
  \item{terminalOnly}{\code{TRUE}=only terminal nodes, \code{FALSE}=all nodes.}
  \item{asObject}{\code{TRUE}: \code{f} accepts node as object.  
     \code{FALSE}: \code{f} accepts node by node name and object name, f(nn,tr)}.
     In the latter case, \code{f} should be defined as \code{f <- function(nn,tree){...}}.
  \item{\dots}{Additional arguments to pass to \code{f}}
}
\value{
 A list of results; names of elements are names of nodes.
}
\keyword{tree}
\keyword{cluster}
