% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boxr_auth.R
\name{box_auth}
\alias{box_auth}
\title{Authenticate to Box (interactive-app)}
\usage{
box_auth(
  client_id = NULL,
  client_secret = NULL,
  interactive = TRUE,
  cache = "~/.boxr-oauth",
  write.Renv,
  ...
)
}
\arguments{
\item{client_id}{\code{character},
the client id for the account to use.}

\item{client_secret}{\code{character},
the client secret for the account to use.}

\item{interactive}{\code{logical}, indicates that the authorization process
will be interactive (requiring user input to the R console, and/or a
visit to \href{https://developer.box.com/docs}{box.com}).}

\item{cache}{A logical value or a string. \code{TRUE} means to cache
using the default cache file \code{.httr-oauth}, \code{FALSE} means
don't cache, and \code{NA} means to guess using some sensible heuristics.
A string means use the specified path as the cache file.}

\item{write.Renv}{\strong{deprecated}.}

\item{...}{Other arguments passed to \code{\link[httr:oauth2.0_token]{httr::oauth2.0_token()}}.}
}
\value{
Invisible \code{NULL}, called for side effects.
}
\description{
There are two common use-cases for \code{box_auth()}:
\enumerate{
\item Connecting to \href{https://developer.box.com/docs}{box.com}
accounts from \strong{boxr} for the first time.
\item Connecting to previously-connected
\href{https://developer.box.com/docs}{box.com} accounts.
}

In the first case, you will need to provide \code{box_auth()} with
\code{client_id} and \code{client_secret}.

In the second case, you can call \code{box_auth()} with no arguments;
the function will look for these in your R environment.

To run this function the first time, you will need access to the \code{client_id}
and \code{client_secret} of a Box interactive-app. If you are using a work account,
this information might be provided to you by your Box-admin team. If you are
using a personal account, you will have to set up a Box interactive-app.

For both cases, these procedures are detailed in this boxr
\href{https://r-box.github.io/boxr/articles/boxr-app-interactive.html}{interactive-app article}.
}
\section{Side-effects}{


This function has some side effects which make subsequent calls to
\code{box_auth()} easier:
\itemize{
\item a browser window may be opened at \href{https://developer.box.com/docs}{box.com},
for you to authorize to your Box app.
\item a token file is written, according to the value of \code{cache}. The default
behavior is to write this file to \verb{~/.boxr-oauth}.
For all platforms, \code{~} resolves to the home directory, i.e. path is
resolved using \code{\link[fs:path_expand]{fs::path_expand()}} rather than \code{\link[fs:path_expand]{fs::path_expand_r()}}.
\item some global \code{\link[=options]{options()}} are set for your session to manage the token.
\item environment variables \code{BOX_USER_ID}, \code{BOX_CLIENT_ID},
and \code{BOX_CLIENT_SECRET} are set.
\item if these environment variables have changed, and you have the
\href{https://usethis.r-lib.org}{usethis} package installed, it will copy
some text to your clipboard that you can paste into your \code{.Renviron} file.
\item a message is printed to the console.
}
}

\seealso{
\describe{
\item{\code{\link[=box_auth_service]{box_auth_service()}}}{for authenticating to service-apps.}
\item{\code{\link[httr:oauth2.0_token]{httr::oauth2.0_token()}}}{for details on how tokens are handled.}
\item{\href{https://developer.box.com/guides/authentication/oauth2/oauth2-setup/}{Box Developers: Setup with OAuth 2.0}}{
documentation for setting up Box (interactive) apps with OAuth 2.0.}
}
}
