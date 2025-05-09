% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_golem.R
\name{list_to_li}
\alias{list_to_li}
\alias{named_to_li}
\title{Turn an R list into an HTML list}
\usage{
list_to_li(x, list_type = "ul", class = NULL)

named_to_li(list, class = NULL, style = NULL)
}
\arguments{
\item{x}{An R list}

\item{list_type}{\code{chr} The list type, either ol or ul}

\item{class}{a class for the list}
}
\value{
an HTML list
}
\description{
Turn an R list into an HTML list
}
\examples{
list_to_li(c("a","b"))

}
\seealso{
Other golem: 
\code{\link{enurl}()},
\code{\link{is_shiny.tag}()},
\code{\link{jq_hide}()},
\code{\link{list_to_p}()},
\code{\link{make_action_button}()},
\code{\link{rep_br}()},
\code{\link{tagRemoveAttributes}()},
\code{\link{undisplay}()},
\code{\link{with_red_star}()}

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
\code{\link{fa_arrow_icon}()},
\code{\link{icon_sb}()},
\code{\link{infoIcon}()},
\code{\link{jq_hide}()},
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
\concept{golem}
\concept{ui}
