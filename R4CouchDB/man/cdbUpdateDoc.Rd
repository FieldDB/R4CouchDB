\name{cdbUpdateDoc}
\alias{cdbUpdateDoc}
\title{This function updates an existing doc}
\usage{
  cdbUpdateDoc(cdb)
}
\arguments{
  \item{cdb}{the cdb connection configuration list must
  contain the \code{cdb$serverName}, \code{cdb$port},
  \code{cdb$DBName} and \code{cdb$id}. The data which
  updates the data stored in the doc is provided in
  \code{cdb$dataList}}
}
\value{
  \item{cdb }{The response of the request is stored in
  \code{cdb$res} after converting the answer by means of
  \code{fromJSON()}. The revision provided by the respons
  is used for updating the \code{cdb$dataList$'_rev'}. }
}
\description{
  This essentially means that a revision, corresponding to
  the '_id' has to be provided. If no '_rev' is provided
  the function gets the doc fron the db and takes the
  revition number for the update
}
\details{
  Updating a doc at couchdb means executing a http "PUT"
  request. The \code{cdb} list must contain the
  \code{cdb$serverName}, \code{cdb$port},
  \code{cdb$DBName}, \code{cdb$id}. Since v0.6 the revision
  of the document should exist at the intended place;
  \code{cdb$dataList$'_rev'}.

  \code{getURL()} with \code{customrequest = "PUT"} does
  the work.  If a needed \code{cdb$} list entry is not
  provided \code{cdb$error} maybe says something about the
  R side.
}
\author{
  wactbprot
}
\references{
  \url{ http://www.omegahat.org/RCurl/ } \url{
  http://www.omegahat.org/RJSONIO/ } \url{
  http://couchdb.apache.org/ }
}
\seealso{
  \code{cdbInit()}
}
\keyword{misc}

