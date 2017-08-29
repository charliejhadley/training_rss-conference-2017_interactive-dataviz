library("tidyverse")
library("stringr")
library("lubridate")

raw_journeys <- read_csv("data-raw/journeys.csv")

journeys <- raw_journeys %>%
  mutate(date = dmy(date))


journeys <- journeys %>%
  separate(
    col = start.location,
    into = c("start.country", "start.city"),
    sep = ",",
    extra = "merge",
    remove = FALSE
  ) %>%
  separate(
    col = end.location,
    into = c("end.country", "end.city"),
    sep = ",",
    extra = "merge",
    remove = FALSE
  )

detailed_journeys <- journeys %>%
  mutate(start.state = str_extract(start.city, "\\([^()]+\\)")) %>%
  mutate(start.state = gsub("\\(|\\)", "", start.state)) %>%
  filter(str_length(start.state) <= 2) %>%
  mutate(start.city = trimws(str_replace(start.city, "\\([^()]{0,}\\)", ""))) %>%
  mutate(end.state = str_extract(end.city, "\\([^()]+\\)")) %>%
  mutate(end.state = gsub("\\(|\\)", "", end.state)) %>%
  filter(str_length(end.state) <= 2) %>%
  mutate(end.city = trimws(str_replace(end.city, "\\([^()]{0,}\\)", ""))) %>%
  filter(!end.city == "") %>%
  filter(!is.na(date))

all_journeys <- journeys %>%
  mutate(start.state = str_extract(start.city, "\\([^()]+\\)")) %>%
  mutate(start.state = gsub("\\(|\\)", "", start.state)) %>%
  filter(str_length(start.state) <= 2) %>%
  mutate(start.city = trimws(str_replace(start.city, "\\([^()]{0,}\\)", ""))) %>%
  mutate(end.state = str_extract(end.city, "\\([^()]+\\)")) %>%
  mutate(end.state = gsub("\\(|\\)", "", end.state)) %>%
  filter(str_length(end.state) <= 2) %>%
  mutate(end.city = trimws(str_replace(end.city, "\\([^()]{0,}\\)", ""))) %>%
  filter(!end.city == "") %>%
  filter(!is.na(date))

detailed_journeys %>%
  write_csv("data/detailed-journeys.csv")

all_journeys %>%
  write_csv("data/all-journeys.csv")