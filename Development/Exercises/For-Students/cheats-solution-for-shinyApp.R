shinyApp(
  ui = fluidPage(
    wellPanel("Slider for choosing the exponent"),
    selectInput("exponent", label = "exponent", choices = 1:5),
    plotOutput("curve")
  ),
  server = function(input, output){
    output$curve <- renderPlot({
      curve(x^as.numeric(input$exponent), from = -5, to = 5)
      })
  }
)