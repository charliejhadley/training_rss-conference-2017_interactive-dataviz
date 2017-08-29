## ui.R
library(leaflet)

shinyUI(
  navbarPage(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
    tabPanel("Map",
             fluidPage(
               sidebarLayout(
                 sidebarPanel(h1("Text styled by CSS."),
                              a(href = "http://google.com", "Link to Google"),
                              img(src = "images/tidyverse.png", width = "100%"),
                              selectInput(
                                "map_tiles",
                                label = "Map Type",
                                choices = c("OpenStreetMap", "Stamen.Toner")
                              ),
                              htmlOutput("regions_ui")
                 ),
                 mainPanel(leafletOutput("capitals_map")))
             )),
    tabPanel("About",
             uiOutput("app_description_ui"))
    
    
    
  )
)