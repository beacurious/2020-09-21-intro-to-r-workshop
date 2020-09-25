## Visualising data with ggplot2

# load ggplot

library(ggplot2)
library(tidyverse)
# library(readr)

# load data

surveys_complete <- read_csv("data_raw/surveys_complete.csv")

# create a plot

ggplot(data = surveys_complete)

ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length)) +
 geom_point()

# assign a plot to a object

surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

# draw the plot

surveys_plot +
  geom_point()

# Challenge 1
# Change the mappings so weight is on the y-axis and hindfoot_length is on the x-axis

ggplot(data = surveys_complete, mapping = aes(x = hindfoot_length, y = weight)) + 
  geom_point()

surveys_plot + 
  geom_point(aes(x = hindfoot_length, y = weight))


# Challenge 2
# How would you create a histogram of weights?
  
challenge2 <-  ggplot(data = surveys_complete,
                      mapping = aes(x = weight)) +
  geom_histogram()
challenge2

ggplot(data = surveys_complete, aes(x=weight)) +  geom_histogram(binwidth=10)



