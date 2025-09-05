rm(list=ls())
library(ggplot2)
install.packages("ggplot2")
Y
install.packages("dplyr")
Y
library(ggplot2)
library(dplyr)
avg_mpg <- mpg %>%
  group_by(class) %>%
  summarise(avg_hwy_mpg = mean(hwy, na.rm = TRUE))
ggplot(avg_mpg, aes(y = class, x = avg_hwy_mpg)) +
  geom_col(fill = "lightblue") + # Set all bars to light blue
  labs(title = "Average Highway MPG by Vehicle Class",
       y = "Vehicle Class",
       x = "Average Highway MPG") +
  theme_minimal()