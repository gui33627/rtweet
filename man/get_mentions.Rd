% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mentions.R
\name{get_mentions}
\alias{get_mentions}
\title{Get mentions for the authenticating user.}
\usage{
get_mentions(
  n = 200,
  since_id = NULL,
  max_id = NULL,
  parse = TRUE,
  token = NULL,
  ...
)
}
\arguments{
\item{n}{Specifies the number of Tweets to try and retrieve, up to
a maximum of 200 (the default). The value of count is best
thought of as a limit to the number of tweets to return because
suspended or deleted content is removed after the count has been
applied.}

\item{since_id}{Returns results with an ID greater than (that is,
more recent than) the specified ID. There are limits to the
number of Tweets which can be accessed through the API. If the
limit of Tweets has occurred since the since_id, the since_id
will be forced to the oldest ID available.}

\item{max_id}{Character, returns results with an ID less than (that is,
older than) or equal to \code{max_id}.}

\item{parse}{The default, \code{TRUE}, indicates that the result should
be parsed into a convenient R data structure like a list or data frame.
This protects you from the vagaries of the twitter API. Use \code{FALSE}
to return the "raw" list produced by the JSON returned from the twitter
API.}

\item{token}{Expert use only. Use this to override authentication for
a single API call. In most cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}

\item{...}{Other arguments passed as parameters in composed API
query.}
}
\value{
Tibble of mentions data.
}
\description{
Returns data on up to 200 of the most recent mentions (Tweets
containing a users's screen_name) of the authenticating user.
The timeline returned is the equivalent of the one seen when you view
your mentions on twitter.com.
}
\examples{

\dontrun{

## get most recent 200 mentions of authenticating user
mymentions <- get_mentions()

## view data
mymentions

}

}
\seealso{
\url{https://developer.twitter.com/en/docs/tweets/timelines/api-reference/get-statuses-mentions_timeline}

Other tweets: 
\code{\link{get_favorites}()},
\code{\link{get_timeline}()},
\code{\link{lists_statuses}()},
\code{\link{lookup_tweets}()},
\code{\link{search_tweets}()},
\code{\link{tweets_data}()},
\code{\link{tweets_with_users}()}
}
\concept{tweets}
