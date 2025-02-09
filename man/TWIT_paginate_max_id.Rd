% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/http.R
\name{TWIT_paginate_max_id}
\alias{TWIT_paginate_max_id}
\alias{TWIT_paginate_cursor}
\alias{TWIT_paginate_chunked}
\title{Pagination}
\usage{
TWIT_paginate_max_id(
  token,
  api,
  params,
  get_max_id,
  n = 1000,
  page_size = 200,
  parse = TRUE,
  max_id = NULL,
  count_param = "count",
  retryonratelimit = FALSE,
  verbose = TRUE
)

TWIT_paginate_cursor(
  token,
  api,
  params,
  n = 5000,
  page_size = 5000,
  cursor = "-1",
  retryonratelimit = FALSE,
  verbose = TRUE
)

TWIT_paginate_chunked(
  token,
  api,
  params_list,
  retryonratelimit = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{get_max_id}{A single argument function that returns a vector of
string ids. This is needed because different endpoints store that
information in different places.}

\item{max_id}{String giving id of most recent tweet to return.
Can be used for manual pagination.}

\item{retryonratelimit}{If \code{TRUE}, and a rate limit is exhausted, will wait
until it refreshes. Most twitter rate limits refresh every 15 minutes.
If \code{FALSE}, and the rate limit is exceeded, the function will terminate
early with a warning; you'll still get back all results received up to
that point.

If you expect a query to take hours or days to perform, you should not
rely soley on \code{retryonratelimit} because it does not handle other common
failure modes like temporarily losing your internet connection.}

\item{verbose}{Show progress bars and other messages indicating current
progress?}

\item{cursor}{Which page of results to return. The default will return
the first page; can be used for manual pagination.}
}
\description{
Pagination
}
\keyword{internal}
