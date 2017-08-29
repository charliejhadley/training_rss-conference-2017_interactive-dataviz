output$regions_ui <- renderUI({
  selectInput(
    "selected_regions",
    label = "Selected regions",
    choices = regions,
    multiple = TRUE,
    selected = regions
  )
})

capitals_data <- eventReactive(
  input$selected_regions,
  capital_cities %>%
    filter(region %in% input$selected_regions)
)

output$capitals_map <- renderLeaflet({
  map <- leaflet() %>%
    addProviderTiles(input$map_tiles)
  
  if (is.null(input$selected_regions)) {
    map
  } else {
    map %>%
      addCircleMarkers(data = capitals_data(), popup = ~ Capital)
  }
})