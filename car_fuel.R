# Title
# Name
# Date
# Description (i.e. what kind of data?
# what is the research question being asked here?)

# Data From:
# https://www.kaggle.com/??????????

# load packages
library(tidyverse)
library(rio)
library(scales)
library(GGally)
library(openxlsx)
library(readr)

# load the data
cars <- read_csv("car_fule.csv")

# explore
glimpse(cars)
summary(cars$fuel_h)

# SPLOM (Scatter plot matrix) but with proper data types:
cars %>%
  select(-num, -model, -manufacturer) %>%
  ggpairs()

ggplot()

# Analysis on city v
summary(cars$fuel_c)
#qplot(fuel_c, data=cars, geom="histogram", bins=30)
ggplot()


ggplot()


table(cars$cylinders)
qplot(cylinders, data=cars, geom="bar", fill=factor(cylinders))
ggplot()

# Analysis on Fuel types
qplot(fl, data=cars, geom="bar", fill=fl)
ggplot()

# Analysis Vehicle kind
table(cars$size)
#qplot(size, data=cars, geom="bar", fill=size)
ggplot()

# engine in highway
ggplot(cars, aes(engine, fuel_h)) +
  geom_point(color = "#cb181d", alpha = 0.4, shape = 16)

# by size
ggplot(cars, aes(engine, fuel_h, color = size)) +
  geom_point()

# By plot:
ggplot(cars, aes(engine, fuel_h)) +
  geom_point() +
  facet_wrap(~ size, nrow = 2)



# Type of drive
ggplot(data = cars) +
  geom_smooth(mapping = aes(x = engine, y = fuel_h, linetype = , color=drive))

#Analysis of kg/l compared to engine
plot(fuel_h ~ engine, data = cars, col = "blue", pch = 20, cex = 1.5)

#  engine in highway km
ggplot(cars, aes(engine, fuel_h)) +
  geom_point(alpha = 0.3) +
  geom_smooth()


# Number of cylinders
ggplot(data = cars) +
  geom_point(mapping = aes(x = engine, y = fuel_h, color=drive)) +
  facet_grid(drive ~ cylinders)



#kg/l in highway
hist(cars$fuel_h, main = "Driving on highways",
     xlab = ", kg/l")

#kg/l in city
hist(cars$fuel_c, main = "Driving on City",
     xlab = "kilograms per liters, kg/l")

#Highway kg/l data
cars = lm(fuel_h ~ cylinders + year, data = cars)
coef(cars)

#City kg/l data
cars = lm(fuel_c ~ cylinders + year, data = cars)
coef(cars)

#summary
summary(automatic.fuel_c)
summary(manual.fuel_c)
