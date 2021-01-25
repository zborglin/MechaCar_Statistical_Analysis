# MechaCar_Statistical_Analysis
- R application

## Purpose 
- Review of car manufacturing data, investigation of suspected specification issues.

##  Resources
- R version 4.0.3
- MechaCar_mpg.csv, Suspension_Coil.csv
- /images/

##  Data Review

### Multiple Linear Regression to predict MPG
The following factors are considered in this linear model:
- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- AWD
Here is the fit result:
![Linear Regression](https://github.com/zborglin/MechaCar_Statistical_Analysis/blob/main/images/Linear_Model.png)
- The intercept, vehicle weight, and ground clearance all provided non-random amounts of variance to the mpg values in the dataset - meaning the are statistically significant with 95% confidence.
- The slope of the linear model is not considered to be zero with a p-value lower than 0.05
- The model is an effective fit with an R^2 value of 0.7149

### Summary Statistics on Suspension Coils
Summary statistics for overall car population:
![Overall Summary](https://github.com/zborglin/MechaCar_Statistical_Analysis/blob/main/images/Suspension_Total_Stats.png)
Summary statistics for car PSI by manufacturing lot:
![Overall Summary](https://github.com/zborglin/MechaCar_Statistical_Analysis/blob/main/images/Lot_summary_PSI.png)
The manufacturing analysis reveals that while the overall population meets the design specification, manufacturing lot 3 exhibits a variance greater than 100 PSI. 

### T-Tests on Suspension Coils
The overall population is compared to the mean PSI of the population (1500 PSI):
![Overall Summary](https://github.com/zborglin/MechaCar_Statistical_Analysis/blob/main/images/t_test_total.png)
-Overall, the prototype car sample PSI is significantly different than the population PSI with a p-value of 0.06028
Each manufacturing lot is compared to the mean PSI of the population (1500 PSI):
![Overall Summary](https://github.com/zborglin/MechaCar_Statistical_Analysis/blob/main/images/t_test_by_lot.png)
-When looking at each manufacturing lot separately, lots 2 and 3 were significantly different than 1500 while lot 1 was on target with the population PSI.