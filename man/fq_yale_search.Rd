% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fq_yale_search.R
\name{fq_yale_search}
\alias{fq_yale_search}
\title{Search in Yale Department of Economics}
\usage{
fq_yale_search(...)
}
\arguments{
\item{...}{Character strings to match the search.}
}
\value{
A \code{tibble} with the series that fit the search.
}
\description{
haha
}
\details{
The search is case insensitive. There is no difference between looking for "GDP" of "gdp", they yield the same output.
}
\examples{
fq_yale_search("gdp", "per capita")
}
