#deliverable 1
#Import dplyr library
library(dplyr)

#import mpg csv file
mecha_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))


#Deliverable 2
#import suspension coil csv
suspension_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#create total summary data frame
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create lot summary data frame
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#Deliverable 3
#perform t test
t.test(suspension_coil$PSI, mu=1500)

# perform t test on lots
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
