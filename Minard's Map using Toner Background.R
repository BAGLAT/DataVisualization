## Minard 1st Fig

library(tidyverse)
library(lubridate)
library(ggmap)
library(ggrepel)
library(gridExtra)
library(pander)

cities <- read.table("C:/Users/TAN/Google Drive/Data Visualization/cities.txt",header = TRUE, stringsAsFactors = FALSE)

troops <- read.table("C:/Users/TAN/Google Drive/Data Visualization/troops.txt",header = TRUE, stringsAsFactors = FALSE)


ggmap::register_google(key = "AIzaSyDcsZv7sCeo9MM2OyhJRZxtsHDAAQZXWZU")

#nstall.packages('rlang')

#update.packages("rlang")
surv <- read.table("C:/Users/TAN/Google Drive/Data Visualization/survivors.txt",header = TRUE, stringsAsFactors = FALSE) # %>%mutate(date = dmy(date))  # Convert string to actual date
temps <- read.table("C:/Users/TAN/Google Drive/Data Visualization/tempsN.txt",header = TRUE, stringsAsFactors = FALSE) # %>%mutate(date = dmy(date))  # Convert string to actual date

march.1812.ne.europe <- c(left = 23.5, bottom = 53.4, right = 38.1, top = 56.3)

march.1812.ne.europe.map <- get_stamenmap(bbox = march.1812.ne.europe, zoom = 8,
                                          maptype = "toner-background", where = "cache")

march.1812.plot <- ggmap(march.1812.ne.europe.map) +
  geom_path(data = troops, aes(x = long, y = lat, group = group, 
                               color = direction, size = survivors),
            lineend = "round") +
  geom_point(data = cities, aes(x = long, y = lat),
             color = "#e02a09") +
  geom_text_repel(data = surv, aes(x = long, y = lat, label = survivors),
                  color = "#080808", family = "Open Sans Condensed Bold") +
  geom_text_repel(data = cities, aes(x = long, y = lat, label = city),
                  color = "#080808", family = "Open Sans Condensed Bold") +
  geom_text_repel(data = temps, aes(x = long,y = lat, label = temp),
                  color = "#080808", family = "Open Sans Condensed Bold") +
  scale_size(range = c(0.5, 10)) + 
  scale_colour_manual(values = c("#DFC17E","#FF4500")) +
  guides(color = FALSE, size = FALSE) +
  theme_nothing()

march.1812.plot
