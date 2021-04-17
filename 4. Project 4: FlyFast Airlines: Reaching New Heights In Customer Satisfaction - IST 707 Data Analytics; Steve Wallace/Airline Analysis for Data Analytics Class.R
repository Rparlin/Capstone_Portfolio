dev.off() # Clear the graph window
cat('\014')  # Clear the console
rm(list=ls()) # Clear all user objects from the environment!!!


# Set working directory 
setwd("C:/Users/katie/Desktop/Syracuse University/IST707 - Data Analytics/Group Project")
getwd()

library(tidyverse)
library(readxl)

data <- read_excel("AirlineData.xlsx")
View(data)

data$Flight.time.in.minutes <- as.numeric(data$Flight.time.in.minutes)

summary(data$Flight.time.in.minutes)

hist(data$Flight.time.in.minutes)

library(psych)
pairs.panels(data[c("Loyalty", "Total.Freq.Flyer.Accts" )])
colnames(data)
