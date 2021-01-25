library(dplyr)

#load data
car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
suspension_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Multiple linear regression - source: MechaCar_mpg.csv
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)) #generate multiple linear regression model & summary statistics

#Summary statistics - source: Suspension_Coil.csv
total_summary_PSI <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary_PSI <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))