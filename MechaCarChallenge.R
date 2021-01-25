library(dplyr)

#load data
car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
suspension_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Multiple linear regression - source: MechaCar_mpg.csv
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)) #generate multiple linear regression model & summary statistics

#source: Suspension_Coil.csv
#Summary statistics  
total_summary_PSI <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary_PSI <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# t-test - total
t.test(suspension_data$PSI, mu=1500)
# t-test - by lot
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == "Lot1"), mu=1500 )
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == "Lot2"), mu=1500 )
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == "Lot3"), mu=1500 )