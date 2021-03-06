\name{cdbGetDoc}
\alias{cdbGetDoc}
\title{Get a doc from CouchDB}
\usage{
  cdbGetDoc(cdb)
}
\arguments{
  \item{cdb}{Beside \code{cdb$serverName}, \code{cdb$port}
  and \code{cdb$DBName} the \code{cdb$id} must be given. R
  errors are reported

  in cdb$errors}
}
\value{
  \item{cdb }{The result of the request is stored in
  \code{cdb$res} after converting the answer into a list
  using \code{fromJSON()}. If a list entry needed in
  \code{cdb} is not provided \code{cdb$error} gives some
  information.

  }
}
\description{
  With a given \code{cdb$id} this function requests the
  document.
}
\author{
  wactbprot
}
\references{
  \url{ http://couchdb.apache.org/ } \url{
  http://www.omegahat.org/ }
}
\seealso{
  \code{cdbAddDoc()}
}
\keyword{misc}

