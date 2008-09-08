\name{plotImage.glcTree}
\alias{plotImage.glcTree}
\title{Plot a Gaussian RPMM Tree Profile}
\description{
Plots profiles of terminal nodes in color.
}
\usage{
plotImage.glcTree(env, 
   start = "r", method = "weight", 
   palette = colorRampPalette(c("yellow", "black", "blue"), space = "Lab")(128), 
   divcol = "red", xorder = NULL, dimensions = NULL, labelType = "LR", muColorEps = 1e-08)
}
\arguments{
  \item{env}{RPMM object to print.}
  \item{start}{Node to plot (usually root)}
  \item{method}{Method to determine width of columns that represent classes: \dQuote{weight} (subject weight in class) or dQuote{binary} (depth in tree).}
  \item{palette}{Color palette to use for image plot.}
  \item{divcol}{Divider color}
  \item{xorder}{Order of variables.  Can be useful for constant ordering across multiple plots.}
  \item{dimensions}{Subset of dimensions of source data to show.  Defaults to all.  Useful to show a subset of dimensions.}
  \item{labelType}{Label name type: \dQuote{LR} or \dQuote{01}.}
  \item{muColorEps }{Small value to stabilize color generation.}
}
\details{
  See \code{\link{glcTree}} for example.
}
\value{
  Returns a vector of indices similar to the \code{order} function, representing the orrdering of items used in the plot.
  This is useful for replicating the order in another plot, or for axis labeling.
}
\keyword{tree}
\keyword{cluster}
