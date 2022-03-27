library(dplyr)
library(knitr)
library(ggplot2)
MPGData <- read.csv(file = "MechaCar_mpg.csv")
S_Coil <- read.table(file="Suspension_Coil.csv",sep=",",header = TRUE)

Linear_Model_MPG<-lm(formula = mpg~vehicle_length
                     +vehicle_weight
                     +spoiler_angle
                     +ground_clearance
                     +AWD,
                     data = MPGData)

Lin_Mod_Mpg_Summary = summary(Linear_Model_MPG)
Lin_Mod_Mpg_Summary


total_summary <- S_Coil %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

total_summary



# Experimental Below

PSI_Subset <- subset(S_Coil, select = PSI)

# Type Error when using t-test

Lot_1 <- subset(S_Coil, Manufacturing_Lot == "Lot1" ,select = PSI)
Lot_2 <- subset(S_Coil, Manufacturing_Lot == "Lot2" ,select = PSI)
Lot_3 <- subset(S_Coil, Manufacturing_Lot == "Lot3" ,select = PSI)

#These t-test show output, though ave different results


PSI_All <- t.test(formula = PSI~1,data = S_Coil)
PSI_All

PSI_All2 <- t.test(formula = PSI~1,data = S_Coil, mu = 1498.78)
PSI_All2

Lot11 <- S_Coil %>% filter(Manufacturing_Lot == "Lot1")
Lot22 <- S_Coil %>% filter(Manufacturing_Lot == "Lot2")
Lot33 <- S_Coil %>% filter(Manufacturing_Lot == "Lot3")

# This didn't work, modelled from mod 15.6.3 15.6.4

t.test(formula = Lot11~PSI,data = S_Coil)
t.test(formula = Lot11~1,data = S_Coil)

