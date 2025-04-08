
library(shiny)

ui <- fluidPage(
  titlePanel("Reactive Greeting"),
  
  textInput("name", "Enter your name:", placeholder = "e.g., Taylor"),
  
  h3(textOutput("greeting"))
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    if (input$name == "") {
      "👋 Hello there! Please enter your name."
    } else {
      paste("👋 Hello,", input$name, "!")
    }
  })
}

shinyApp(ui, server)

