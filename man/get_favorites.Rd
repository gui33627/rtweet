% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/favorites.R
\name{get_favorites}
\alias{get_favorites}
\title{Get tweets data for statuses favorited by one or more target users.}
\usage{
get_favorites(
  user,
  n = 200,
  since_id = NULL,
  max_id = NULL,
  parse = TRUE,
  token = NULL
)
}
\arguments{
\item{user}{Character vector of screen names or user ids.
See \code{\link[=as_screenname]{as_screenname()}} for more details.}

\item{n}{Specifies the number of records to retrieve. Defaults to 200,
which is the maximum number of records that can be retrieved in a single
request. Higher numbers will require multiple requests.

\code{n} is applied before removing any tweets that have been suspended or
deleted.}

\item{since_id, max_id}{Limit tweets to ids in \verb{(since_id, max_id]}.
If \code{since_id} is smaller than the earliest tweet available to the API,
it will be forced to the oldest tweet available.}

\item{parse}{The default, \code{TRUE}, indicates that the result should
be parsed into a convenient R data structure like a list or data frame.
This protects you from the vagaries of the twitter API. Use \code{FALSE}
to return the "raw" list produced by the JSON returned from the twitter
API.}

\item{token}{Expert use only. Use this to override authentication for
a single API call. In most cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}
}
\value{
A tibble with one row for each tweet.
}
\description{
Returns up to 3,000 statuses favorited by each of one or more
specific Twitter users.
}
\examples{
\dontrun{

## get max number of statuses favorited by KFC
kfc <- get_favorites("KFC", n = 3000)
kfc

## get 400 statuses favorited by each of three users
favs <- get_favorites(c("Lesdoggg", "pattonoswalt", "meganamram"))
favs

}
}
\seealso{
\url{https://developer.twitter.com/en/docs/tweets/post-and-engage/api-reference/get-favorites-list}

Other tweets: 
\code{\link{get_mentions}()},
\code{\link{get_timeline}()},
\code{\link{lists_statuses}()},
\code{\link{lookup_tweets}()},
\code{\link{search_tweets}()},
\code{\link{tweets_data}()},
\code{\link{tweets_with_users}()}
}
\concept{tweets}
