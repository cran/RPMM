\name{blcSubTree}
\alias{blcSubTree}
\title{Beta Subtree}
\description{
Subsets a \dQuote{blcTree} object, i.e. considers the tree whose root is a given node.
}
\usage{
blcSubTree(tr, node)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tr}{\dQuote{blcTree} object to subset}
  \item{node}{Name of node to make root.}
}
\details{
  Typically not be called by user.
}
\value{
  A \dQuote{blcTree} object whose root is the given node of \code{tr}
}
\keyword{tree}
\keyword{cluster}
