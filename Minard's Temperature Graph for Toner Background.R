## Temperature 1st Fig Minard
library(tidyverse)
library(lubridate)
library(ggmap)
library(ggrepel)
library(gridExtra)
library(pander)
library(dplyr)

cities <- read.table("C:/Users/TAN/Google Drive/Data Visualization/cities.txt",header = TRUE, stringsAsFactors = FALSE)

troops <- read.table("C:/Users/TAN/Google Drive/Data Visualization/troops.txt",header = TRUE, stringsAsFactors = FALSE)

temps <- read.table("C:/Users/TAN/Google Drive/Data Visualization/temps.txt",header = TRUE, stringsAsFactors = FALSE) # %>%mutate(date = dmy(date))  # Convert string to actual date


#### Temperature

temps.nice <- temps %>%
  mutate(nice.label = paste0(temp, "°, ", month, ". ", day))



temps.1812.plot <- ggplot(data = temps.nice, aes(x = long, y = temp)) +
  geom_line() +
  geom_label(aes(label = nice.label),
             family = "Open Sans Condensed Bold", size = 5) + 
  labs(x = NULL, y = "° Celsius") +
  scale_x_continuous(limits = ggplot_build(march.1812.plot)$layout$panel_ranges[[1]]$x.range) +
  scale_y_continuous(position = "right") +
  coord_cartesian(ylim = c(-35, 5)) +  # Add some space above/below
  theme_bw(base_family = "Open Sans Condensed Light") +
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.text.x = element_blank(), axis.ticks = element_blank(),
        panel.border = element_blank())


temps.1812.plot