\name{cdbRemoveDB}
\alias{cdbRemoveDB}
\title{Function to remove a database}
\usage{
  cdbRemoveDB(cdb)
}
\arguments{
  \item{cdb}{The \code{cdb} has to provide
  \code{cdb$serverName}, \code{cdb$port} and
  \code{cdb$DBName}}
}
\value{
  \item{cdb}{The CouchDB answer is stored in
  \code{cdb$res}. Any problems on the R side are reportet
  in \code{cdb$error} }
}
\description{
  Removing a database means sending a http- "DELETE"-
  request to \code{http://cdb$serverName:cdb$port/ ...}
}
\details{
  In \code{cdb} a entry \code{cdb$delDBName} should be
  provided for more explicit deleting respectively more
  secure removing.
}
\author{
  wactbprot
}
\references{
  \url{ http://couchdb.apache.org/ }
}
\seealso{
  \code{cdbMakeDB}
}
\keyword{misc}

