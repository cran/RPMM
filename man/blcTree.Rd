\name{blcTree}
\alias{blcTree}
\title{ Beta RPMM Tree }
\description{
Performs beta latent class modeling using recursively-partitioned mixture model
}
\usage{
blcTree(x, initFunctions = list(blcInitializeSplitFanny()), 
   weight = NULL, index = NULL, wthresh = 1e-08, nodename = "root",
   maxlevel = Inf, verbose = 2, nthresh = 5, level = 0, env = NULL, 
   unsplit = NULL, splitCriterion = blcSplitCriterionBIC)
}
\arguments{
  \item{x}{Data matrix (n x j) on which to perform clustering.  Missing values are supported.  All values should lie strictly between 0 and 1.}
  \item{initFunctions}{List of functions of type \dQuote{blcInitialize...} for initializing latent class model.  See \code{blcInitializeFanny} for an example of arguments and return values.}
  \item{weight}{Weight corresponding to the indices passed (see \code{index}).  Defaults to 1 for all indices}
  \item{index}{Row indices of data matrix to include. Defaults to all (1 to n).}
  \item{wthresh}{Weight threshold for filtering data to children.  Indices having weight less than this value will not be passed to children nodes.  Default=1E-8.}
  \item{nodename}{Name of object that will represent node in tree data object.  Defaults to \dQuote{root}.  USER SHOULD NOT SET THIS.}
  \item{maxlevel}{Maximum depth to recurse.  Default=Inf.}
  \item{verbose}{Level of verbosity.  Default=2 (too much).  0 for quiet.}
  \item{nthresh}{Total weight in node required for node to be a candidate for splitting.  Nodes with weight less than this value will never split.  Defaults to 5.}
  \item{level}{Current level.  Defaults to 0.  USER SHUOLD NOT SET THIS.}
  \item{env}{Object of class \dQuote{blcTree} to store tree data.  Defaults to a new object.  USER SHOULD NOT SET THIS.}
  \item{unsplit}{Latent class parameters from parent, to store in current node.  Defaults to NULL for root.  This is used in plotting functions.  USER SHOULD NOT SET THIS.}
  \item{splitCriterion}{Function of type \dQuote{blcSplitCriterion...} for determining whether a node should be split.  See \code{blcSplitCriterionBIC} for an example of arguments and return values. }
}
\details{
  This function is called recursively by itself.  Upon each recursion, certain arguments (e.g. nodename) are reset.  Do not attempt to set these arguments yourself.
}
\note{
   The class \dQuote{blcTree} is currently implemented as an environment object with
   nodes represented flatly, with name indicating positition in hierarchy
   (e.g. \dQuote{rLLR} = \dQuote{right child of left child of left child of root})
   This implementation is to make certain plotting and update functions simpler
   than would be required if the data were stored in a more natural \dQuote{list of list}
   format.

   The following error may appear during the course of the algorithm:
      \preformatted{
      Error in optim(logab, betaObjf, ydata = y, wdata = w, weights = weights,  : 
           non-finite value supplied by optim
      }
   This is merely an indication that the node being split is too small, in which case
      the splitting will terminate at that node; in other words, it is nothing 
      to worry about.
}
\value{
  An object of class \dQuote{blcTree}.  This is an environment, each of whose component objects represents a node in the tree.
}
\references{Houseman et al., Model-based clustering of DNA methylation array data: a recursive-partitioning algorithm for high-dimensional data arising as a mixture of beta distributions. BMC Bioinformatics 9:365, 2008. }
\author{E. Andres Houseman}
\seealso{\code{\link{glcTree}}}
\examples{
\dontrun{
data(IlluminaMethylation)

heatmap(IllumBeta, scale="n",
  col=colorRampPalette(c("yellow","black","blue"),space="Lab")(128))

# Fit Gaussian RPMM
rpmm <- blcTree(IllumBeta, verbose=0)
rpmm

# Get weight matrix and show first few rows
rpmmWeightMatrix <- blcTreeLeafMatrix(rpmm)
rpmmWeightMatrix[1:3,]

# Get class assignments and compare with tissue
rpmmClass <- blcTreeLeafClasses(rpmm)
table(rpmmClass,tissue)

# Plot fit
par(mfrow=c(2,2))
plot(rpmm) ; title("Image of RPMM Profile")
plotTree.blcTree(rpmm) ; title("Dendrogram with Labels")
plotTree.blcTree(rpmm, 
  labelFunction=function(u,digits) table(as.character(tissue[u$index])))
title("Dendrogram with Tissue Counts")

# Alternate initialization
rpmm2 <- blcTree(IllumBeta, verbose=0, 
  initFunctions=list(blcInitializeSplitEigen(),
                     blcInitializeSplitFanny(nu=2.5)))
rpmm2

# Alternate split criterion
rpmm3 <- blcTree(IllumBeta, verbose=0, maxlev=3,
  splitCriterion=blcSplitCriterionLevelWtdBIC)
rpmm3

rpmm4 <- blcTree(IllumBeta, verbose=0, maxlev=3,
  splitCriterion=blcSplitCriterionJustRecordEverything)
rpmm4$rLL$splitInfo$llike1
rpmm4$rLL$splitInfo$llike2
}
}
\keyword{tree}
\keyword{cluster}

