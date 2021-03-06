\name{ggcorr}
\alias{ggcorr}
\title{ggcorr - Plot a correlation matrix with ggplot2}
\usage{
  ggcorr(data, method = "pairwise", palette = "RdYlGn",
    name = "Correlation\ncoefficient", geom = "tile",
    max_size = 6, ...)
}
\arguments{
  \item{data}{a data matrix. Should contain numerical
  (continuous) data.}

  \item{method}{a character string giving a method for
  computing covariances in the presence of missing values.
  This must be (an abbreviation of) one of the strings
  \code{"everything"}, \code{"all.obs"},
  \code{"complete.obs"}, \code{"na.or.complete"}, or
  \code{"pairwise.complete.obs"}. Defaults to
  \code{"pairwise"}.}

  \item{palette}{a ColorBrewer palette to be used for
  correlation coefficients. Defaults to \code{"RdYlGn"}.}

  \item{name}{a character string for the legend that shows
  quintiles of correlation coefficients.}

  \item{geom}{the geom object to use. Accepts either
  \code{tile} (the default) or \code{point}, to plot
  proportionally scaled circles.}

  \item{max_size}{the maximum size for circles, as passed
  to \code{scale_size_area} for proportional scaling.
  Defaults to \code{6}.}

  \item{...}{other arguments supplied to geom_text for the
  diagonal labels.  Arguments pertaining to the title or
  other items can be achieved through ggplot2 methods.}
}
\description{
  Function for making a correlation plot starting from a
  data matrix, using ggplot2. The function is directly
  inspired by Tian Zheng and Yu-Sung Su's arm::corrplot
  function. Please visit
  \url{http://github.com/briatte/ggcorr} for the latest
  development and descriptions about ggcorr.
}
\examples{
# Basketball statistics provided by Nathan Yau at Flowing Data.
nba <- read.csv("http://datasets.flowingdata.com/ppg2008.csv")
# Default output.
ggcorr(nba[-1])
# Custom options.
ggcorr(
  nba[-1],
  geom     = "point",
  max_size = 6,
  size     = 3,
  hjust    = 0.75,
  angle    = -45,
  palette  = "PuOr" # colorblind safe, photocopy-able
) + labs(title = "Points Per Game")
}
\author{
  Francois Briatte \email{f.briatte@ed.ac.uk}
}
\seealso{
  \code{\link[stats]{cor}} and \code{\link[arm]{corrplot}}
}

