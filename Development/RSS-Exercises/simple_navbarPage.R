shinyApp(
  ui = navbarPage(
    "navbarMenu Example",
    tabPanel("example 1",
             fluidPage(
               sliderInput("number.of.data", label = "Number of Data", min = 200, max = 1000, value = 500),
               plotOutput("hist.1")
             ))
    ,
    tabPanel("example 2",
               fluidPage(
                 sliderInput("number.of.data", label = "Number of Data", min = 200, max = 1000, value = 500),
                 plotOutput("hist.2")
               )
               ),
    collapsible = TRUE
  ),
  server = function(input, output){
    
    data.for.histogram <- reactive({
      rnorm(n = input$number.of.data, mean = 0, sd = 2)
    })
    
    output$hist.1 <- renderPlot({
      hist(data.for.histogram())
    })
    
    output$hist.2 <- renderPlot({
      hist(data.for.histogram())
    })
  }, options = list(width = "100%", height = "800px")
)