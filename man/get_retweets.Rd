% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retweets.R
\name{get_retweets}
\alias{get_retweets}
\title{Get the most recent retweets of a specific Twitter status}
\usage{
get_retweets(status_id, n = 100, parse = TRUE, token = NULL, ...)
}
\arguments{
\item{status_id}{required The numerical ID of the desired status.}

\item{n}{optional Specifies the number of records to retrieve.
Must be less than or equal to 100.}

\item{parse}{The default, \code{TRUE}, indicates that the result should
be parsed into a convenient R data structure like a list or data frame.
This protects you from the vagaries of the twitter API. Use \code{FALSE}
to return the "raw" list produced by the JSON returned from the twitter
API.}

\item{token}{Expert use only. Use this to override authentication for
a single API call. In most cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}

\item{...}{Other arguments used as parameters in the query sent to
Twitter's rest API, for example, \code{trim_user = TRUE}.}
}
\value{
Tweets data of the most recent retweets of a given status
}
\description{
Returns a collection of the 100 most recent retweets of a given
status.  NOTE: Twitter's API is currently limited to 100 or fewer
retweeters.
}
\seealso{
Other retweets: 
\code{\link{get_retweeters}()}
}
\concept{retweets}
