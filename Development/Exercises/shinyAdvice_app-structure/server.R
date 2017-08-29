## server.R
library(leaflet)
library(dplyr)
library(ggplot2)

source("data-processing.R", local = TRUE)

## Global variables
regions = list(
  "Europe", 
  "Asia", 
  "North and South America" = "America", 
  "Africa", 
  "Pacific", 
  "Australia", 
  "Atlantic", 
  "Indian Ocean" = "Indian")

## Reactive component of app
shinyServer(
  function(input, output, session){
    
    source("map.R", local = TRUE)$value
    
    output$app_description_ui <- renderUI({
      includeHTML(knitr::knit("App_Description.Rmd"))
    })
    
  }
)