## server.R

shinyServer(
  function(input, output){
    
    output$capitals_map <- renderLeaflet({
      leaflet() %>%
        addProviderTiles(input$map_tiles)
      addCircleMarkers()
    
    })

  }
)