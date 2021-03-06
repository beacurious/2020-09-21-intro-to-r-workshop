## Pivoting data (convert between wide and long data)

# set up the environment
library(tidyverse)

# load the data

surveys <- read.csv("data_raw/portal_data_joined.csv")


# get the data we want to pivot

surveys_gw <- surveys %>%
  filter(!is.na(weight)) %>%
  group_by(plot_id, genus) %>%
  summarize(mean_weight = mean(weight))


# go from long to wide data

surveys_wide <- surveys_gw %>% 
  pivot_wider(names_from = genus, values_from = mean_weight)

surveys_wide


# go from wide to long data

surveys_long <- surveys_wide %>% 
  pivot_longer(!plot_id, names_to = "genus", values_to = "mean_weight")

surveys_long