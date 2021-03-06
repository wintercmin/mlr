% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ResampleInstance.R
\name{makeResampleInstance}
\alias{ResampleInstance}
\alias{makeResampleInstance}
\title{Instantiates a resampling strategy object.}
\usage{
makeResampleInstance(desc, task, size, ...)
}
\arguments{
\item{desc}{[\code{\link{ResampleDesc}} | \code{character(1)}]\cr
Resampling description object or name of resampling strategy.
In the latter case \code{\link{makeResampleDesc}} will be called internally on the string.}

\item{task}{[\code{\link{Task}}]\cr
Data of task to resample from.
Prefer to pass this instead of \code{size}.}

\item{size}{[\code{\link{integer}}]\cr
Size of the data set to resample.
Can be used instead of \code{task}.}

\item{...}{[any]\cr
Passed down to \code{\link{makeResampleDesc}} in case
you passed a string in \code{desc}.
Otherwise ignored.}
}
\value{
[\code{\link{ResampleInstance}}].
}
\description{
This class encapsulates training and test sets generated from the data set for a number
of iterations. It mainly stores a set of integer vectors indicating the training and
test examples for each iteration.
}
\details{
Object slots:
\describe{
\item{desc [\code{\link{ResampleDesc}}]}{See argument.}
\item{size [integer(1)]}{See argument.}
\item{train.inds [list of \code{integer}]}{List of of training indices for all iterations.}
\item{test.inds [list of \code{integer}]}{List of of test indices for all iterations.}
\item{group [\code{factor}]}{Optional grouping of resampling iterations. This encodes whether
  specfic iterations 'belong together' (e.g. repeated CV), and it can later be used to
  aggregate performance values accordingly. Default is 'factor()'.}
}
}
\examples{
rdesc = makeResampleDesc("Bootstrap", iters = 10)
rin = makeResampleInstance(rdesc, task = iris.task)

rdesc = makeResampleDesc("CV", iters = 50)
rin = makeResampleInstance(rdesc, size = nrow(iris))

rin = makeResampleInstance("CV", iters = 10, task = iris.task)
}
\seealso{
Other resample: \code{\link{ResampleDesc}},
  \code{\link{makeResampleDesc}};
  \code{\link{ResamplePrediction}};
  \code{\link{ResampleResult}};
  \code{\link{bootstrapB632}},
  \code{\link{bootstrapB632plus}},
  \code{\link{bootstrapOOB}}, \code{\link{crossval}},
  \code{\link{holdout}}, \code{\link{repcv}},
  \code{\link{resample}}, \code{\link{subsample}}
}

