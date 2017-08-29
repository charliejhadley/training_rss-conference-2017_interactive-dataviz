library("tidyverse")
library("forcats")
library("plotly")

journeys <- read_csv("data/detailed-journeys.csv")

end_location_frequencies <- journeys %>%
  group_by(end.city, end.country) %>%
  count() %>%
  arrange(desc(n)) %>%
  ungroup() %>%
  mutate(end.city = fct_reorder(end.city, n))