\name{looloss}
\alias{looloss}
\title{
Loss Function for Leave One Out Error
}
\description{
Internal function that computes Leave-On-Out (LOO) Error for KRLS given a fixed value for lambda (the parameter that governs the tradeoff between model fit and complexity in KRLS).
This function is called internally by \code{krls} to find value of lambda that minimizes the LOO error. It would normally not be called by the user directly.
}
\usage{
looloss(y = NULL, Eigenobject = NULL,
lambda = NULL,eigtrunc=NULL)
}
\arguments{
  \item{y}{
n by 1 vector of outcomes.
}
  \item{Eigenobject}{
Object from call to \code{eigen} that contains spectral decomposition of the n by n Kernel matrix.
}
  \item{lambda}{
Positive scalar value for lamnbda parameter.
}

\item{eigtrunc}{
Positive scalar value that determines truncation of eigenvalues for lamnda search window. See \code{\link{krls}} for details. Default is \code{NULL} which means no truncation.
}
}
\value{
Scalar value for LOO error.
}
\author{
Jens Hainmueller (Stanford) and Chad Hazlett (MIT)
}
\seealso{
\code{\link{krls}}
}
