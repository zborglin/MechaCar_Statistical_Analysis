library(dplyr)

#load data
car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)) #generate multiple linear regression model & summary statistics
