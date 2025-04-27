library(shiny)
require(shinyjs)
devtools::load_all()
ui <- fluidPage(
  shinyVirga::use_shinyVirga(),
  shinyVirga::use_driver.js(),
  tags$div(
    id = "red",
    style = "width: 100px; height: 100px; background-color: red;margin: 40px 40px 40px 40px;"
  ),
  shiny::selectInput("position", "Position of Message", choices = c("top", "left", "right", "bottom")),
  shiny::textInput("message", "Message", value = "Test Message"),
  helpText("Bootstrap status message to use (optional)"),
  shiny::selectInput(
    "bs-prefix",
    label = "Bootstrap Prefix",
    choices = c("None", "btn-", "alert-", "text-", "bg-", "list-group-item-", "text-bg-"),
    selected = NULL
  ),
  shiny::selectInput(
    "bs-keyword",
    "Bootstrap Status",
    choices = c("None", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"),
    selected = NULL
  ),
  helpText("Set duration to 0 to persist the message indefinitely."),
  shiny::numericInput(
    "duration",
    label = "Duration (seconds)",
    value = 2,
    min = 0,
    max = 10,
    step = 1
  ),
  shiny::actionButton("my-id", "Show Message")

)

server <- function(input, output, session) {
  observeEvent(input$`my-id`, {
    status <- if (!(input$`bs-prefix` == "None" || input$`bs-keyword` == "None"))
      paste0(input$`bs-prefix`, input$`bs-keyword`)

    js_after("red", content = tags$p(input$message), position = input$position, delay = input$duration * 1000, status = status)
  })


}

shinyApp(ui, server)
