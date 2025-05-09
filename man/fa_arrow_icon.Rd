% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_icons.R
\name{fa_arrow_icon}
\alias{fa_arrow_icon}
\title{FontAwesome Arrow Icons}
\usage{
fa_arrow_icon(
  direction = c("up", "down", "left-right", "up-down", "up-down-left-right"),
  class = NULL,
  lib = "font-awesome",
  ...
)
}
\arguments{
\item{direction}{\code{chr} One of \code{up, down, left-right, up-down, up-down-left-right}}

\item{class}{Additional classes to customize the style of an icon (see the
\href{https://fontawesome.com/how-to-use}{usage examples} for details on
supported styles).}

\item{lib}{The icon library to use. Either \code{"font-awesome"} or \code{"glyphicon"}.}

\item{...}{Arguments passed to the \verb{<i>} tag of \link[htmltools:builder]{htmltools::tags}.}
}
\value{
\code{shiny.tag}
}
\description{
FontAwesome Arrow Icons
}
\examples{
fa_arrow_icon("up-down")
}
\seealso{
Other ui: 
\code{\link{acc_list}()},
\code{\link{add_sass}()},
\code{\link{box_list}()},
\code{\link{bs4Alert}()},
\code{\link{bs_extract_status}()},
\code{\link{bs_statuses}},
\code{\link{col_1}()},
\code{\link{col_10}()},
\code{\link{col_11}()},
\code{\link{col_12}()},
\code{\link{col_2}()},
\code{\link{col_3}()},
\code{\link{col_4}()},
\code{\link{col_5}()},
\code{\link{col_6}()},
\code{\link{col_7}()},
\code{\link{col_8}()},
\code{\link{col_9}()},
\code{\link{col_auto}()},
\code{\link{copyright}()},
\code{\link{css_props}()},
\code{\link{dynamic_row}()},
\code{\link{enurl}()},
\code{\link{icon_sb}()},
\code{\link{infoIcon}()},
\code{\link{jq_hide}()},
\code{\link{list_to_li}()},
\code{\link{list_to_p}()},
\code{\link{make_action_button}()},
\code{\link{make_columns}()},
\code{\link{rep_br}()},
\code{\link{tagRemoveAttributes}()},
\code{\link{ui_row}()},
\code{\link{ui_tabs}()},
\code{\link{undisplay}()},
\code{\link{with_red_star}()}
}
\concept{ui}
