\name{glcSubTree}
\alias{glcSubTree}
\title{Gaussian Subtree}
\description{
Subsets a \dQuote{glcTree} object, i.e. considers the tree whose root is a given node.
}
\usage{
glcSubTree(tr, node)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tr}{\dQuote{glcTree} object to subset}
  \item{node}{Name of node to make root.}
}
\details{
  Typically not be called by user.
}
\value{
  A \dQuote{glcTree} object whose root is the given node of \code{tr}
}
\keyword{tree}
\keyword{cluster}
