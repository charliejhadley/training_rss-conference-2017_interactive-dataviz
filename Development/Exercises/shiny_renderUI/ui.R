## ui.R

shinyUI(fluidPage(sidebarLayout(
  sidebarPanel(
    selectInput(
      "map_tiles",
      label = "Map Type",
      choices = c("OpenStreetMap", "Stamen.Toner")
    ),
    selectInput(
      "selected_regions",
      label = "Selected Regions",
      choices = c("Europe",
                  "Asia")
    )
  ),
  mainPanel(
    leafletOutput("capitals_map")
    )
)))
