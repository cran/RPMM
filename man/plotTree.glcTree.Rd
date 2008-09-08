\name{plotTree.glcTree}
\alias{plotTree.glcTree}
\title{Plot a Gaussian RPMM Tree Dendrogram}
\description{
Alternate plot function for objects of type glcTree:  plots a dendrogram
}
\usage{
plotTree.glcTree(env, start = "r", labelFunction = NULL, 
    buff = 4, cex = 0.9, square = TRUE, labelAllNodes = FALSE, labelDigits = 1, ...)
}
\arguments{
  \item{env}{Tree object to print }
  \item{start}{Note from which to start.  Default=\dQuote{r} for \dQuote{root}.}
  \item{labelFunction}{Function for generating node labels.  Useful for labeling each node with a value.}
  \item{buff}{Buffer for placing tree in plot window.}
  \item{cex}{Text size}
  \item{square}{Square dendrogram or \dQuote{V} shaped}
  \item{labelAllNodes}{\code{TRUE}=All nodes will be labeled; \code{FALSE}=Terminal nodes only.}
  \item{labelDigits}{Digits to include in labels, if \code{labelFunction} returns numeric values.}
  \item{\dots}{Other parameters to be passed to \code{labelFunction}.}
}
\details{
This plots a dendrogram based on RPMM tree, with labels constructed from summaries of tree object.
  See \code{\link{glcTree}} for example.
}
\keyword{tree}
\keyword{cluster}
