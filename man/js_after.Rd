% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_js.R
\name{js_after}
\alias{js_after}
\title{Add a temporary message after an element
Message is added directly below element and persists for three seconds}
\usage{
js_after(
  id,
  content,
  status = NULL,
  properties = list(`font-size` = "12px", display = "block", position = "relative"),
  position = "bottom",
  delay = 3000,
  asis = FALSE,
  .ns = ns_find()
)
}
\arguments{
\item{id}{\code{(chr)} Automatically namespaced with \code{ns} if inside a module}

\item{content}{\code{chr/shiny.tag/shiny.tag.list} Content to show relative to the element}

\item{status}{\code{chr} Bootstrap status to give to the element. One of:
\itemize{
\item{\code{success}}{ Green}
\item{\code{info}}{ Blue}
\item{\code{warning}}{ Yellow}
\item{\code{danger}}{ Red}
\item{\code{primary}}{ Blue}
\item{\code{secondary}}{ Grey}
\item{\code{light}}{ Light}
\item{\code{dark}}{ Dark}
}
Prefixed by one of the following (This is a complete list which depends on the version of Bootstrap you're using):
\itemize{
\item \code{btn-}: Used for styling buttons (e.g., \code{btn-primary}). Includes filled buttons.
\item \code{btn-outline-}: Used for styling outline buttons (e.g., \code{btn-outline-success}).
\item \code{alert-}: Used for styling alert messages (e.g., \code{alert-danger}).
\item \code{text-}: Used as a utility to set text color (e.g., \code{text-warning}).
\item \code{bg-}: Used as a utility to set background color (e.g., \code{bg-info}).
\item \code{border-}: Used as a utility to set border color (e.g., \code{border-secondary}).
\item \code{table-}: Used for contextual coloring of table rows or cells (e.g., \code{<tr class="table-light">}).
\item \code{link-}: Used as helpers to style link colors (e.g., \code{link-dark}).
\item \code{list-group-item-}: Used for contextual coloring of list group items, often with \code{list-group-item-action} (e.g., \code{<a href="#" class="list-group-item list-group-item-action list-group-item-primary">}).
\item \code{text-bg-}: A utility combining text and background color (e.g., \code{text-bg-danger} sets a danger background with appropriate contrasting text color). Often used with badges or other elements.
}}

\item{properties}{\code{list} of css rules to apply to the parent element of the content. Defaults to jQuery validation styled messages.}

\item{delay}{\code{dbl} duration in ms before removing the content from the element. Set to 0 to allow the element to persist.}

\item{asis}{If \code{TRUE}, use the ID as-is even when inside a module
(instead of adding the namespace prefix to the ID).}

\item{.ns}{\code{fun} ns function. Typically found automatically.}
}
\value{
Content added to element
}
\description{
Add a temporary message after an element
Message is added directly below element and persists for three seconds
}
\seealso{
Other JS: 
\code{\link{js_callback}()},
\code{\link{js_callout}()},
\code{\link{js_glow}()},
\code{\link{js_mouseover_once}()},
\code{\link{js_picker_disable}()},
\code{\link{js_picker_enable}()},
\code{\link{js_set_input_val}()},
\code{\link{use_driver.js}()}
}
\concept{JS}
