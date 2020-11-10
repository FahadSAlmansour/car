# Title
# Name Fahad Almansour
# Date
# Description

# Data From:
# load packages
library(tidyverse) # package is designed to make it easy to install and load core packages from the tidyverse in a single command.
library(rio)    # Streamlined data import and export by making assumptions that the user is probably willing to make
library(scales) # implement scales in a way that is graphics system agnostic
library(GGally) # plotting system based on the grammar of graphics
library(readxl) # read Excel
install.packages("dplyr")
install.packages("devtools")
devtools::install_github("tidyverse/dplyr")
install.packages("tidymodels")


cars <- read_csv("car_fule.csv")
View(cars)
