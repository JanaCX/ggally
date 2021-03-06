\name{scagOrder}
\alias{scagOrder}
\title{Find order of variables}
\usage{
  scagOrder(scag, vars, measure)
}
\arguments{
  \item{scag}{\code{scagnostics} object}

  \item{vars}{character vector of the variables to be
  ordered}

  \item{measure}{scagnostics measure to order according to}
}
\value{
  character vector of variable ordered according to the
  given scagnostic measure
}
\description{
  Find order of variables based on a specified scagnostic
  measure by maximizing the index values of that measure
  along the path.
}
\author{
  Jason Crowley \email{crowley.jason.s@gmail.com}
}

