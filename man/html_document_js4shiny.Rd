% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html_document_js4shiny.R
\name{html_document_js4shiny}
\alias{html_document_js4shiny}
\title{js4shiny Example Document}
\usage{
html_document_js4shiny(version = c("solution", "initial"), ...)
}
\arguments{
\item{version}{Which version of the example to render. One of \code{"solution"}
(default) or \code{"initial"}.}

\item{...}{Additional arguments passed to \code{\link[=html_document_plain]{html_document_plain()}}}
}
\description{
This document type is built on the \code{\link[=html_document_plain]{html_document_plain()}}, but is configured
to render the example documents created by the \code{\link[=repl]{repl()}}. You may choose to
render the solution or the example's initial state by setting the output
option \code{version}.
}
\examples{
if (rmarkdown::pandoc_available("1.12.3")) {
  css_ex <- system.file(
    "examples", "css", "css-basics", "css-basics-appearance.Rmd",
    package = "js4shiny"
  )

  tmp_html_init <- tempfile("initial", fileext = ".html")
  tmp_html_sol <- tempfile("solution", fileext = ".html")

  tmp_html_init <- rmarkdown::render(
    input = css_ex,
    output_file = tmp_html_init,
    output_options = list(version = "initial"),
    quiet = TRUE
  )

  tmp_html_sol <- rmarkdown::render(
    input = css_ex,
    output_file = tmp_html_sol,
    output_options = list(version = "solution"),
    quiet = TRUE
  )
}

# View tmp_html_init/sol
# browseURL(tmp_html_init)
# browseURL(tmp_html_sol)

}
\seealso{
\code{\link[=html_document_plain]{html_document_plain()}} \code{\link[=html_document_js]{html_document_js()}}
}
