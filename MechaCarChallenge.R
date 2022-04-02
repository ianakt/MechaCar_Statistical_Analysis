library(dplyr)
library(knitr)
library(ggplot2)
MPGData <- read.csv(file = "MechaCar_mpg.csv")
S_Coil <- read.table(file="Suspension_Coil.csv",sep=",",header = TRUE)

# Linear Model of mpg compared to all other factors
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

# Lot Summary
lot_summary <- S_Coil %>% 
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI)
            ,Median=median(PSI)
            ,Variance=var(PSI),
            SD=sd(PSI))

lot_summary



# 4 tests total
PSI_All <- t.test(S_Coil$PSI, mu = 1500)

# Lot x v All PSI
ttestlot1 <- t.test(Lot_1$PSI, mu = 1500)
ttestlot2 <- t.test(Lot_2$PSI, mu = 1500)
ttestlot3 <- t.test(Lot_3$PSI, mu = 1500)

PSI_All
ttestlot1
ttestlot2
ttestlot3



# grouping lots by subsets didn't work in the function for me
#PSI_Subset <- subset(S_Coil, select = PSI)

#Lot_1 <- subset(S_Coil, Manufacturing_Lot == "Lot1" ,select = PSI)
#Lot_2 <- subset(S_Coil, Manufacturing_Lot == "Lot2" ,select = PSI)
#Lot_3 <- subset(S_Coil, Manufacturing_Lot == "Lot3" ,select = PSI)


#PSI_All <- t.test(formula = PSI~1,data = S_Coil)
#PSI_All

#PSI_All2 <- t.test(formula = PSI~1,data = S_Coil, mu = 1498.78)
#PSI_All2

# # Lots grouped by filter

# Lot11 <- S_Coil %>% filter(Manufacturing_Lot == "Lot1")
# Lot22 <- S_Coil %>% filter(Manufacturing_Lot == "Lot2")
# Lot33 <- S_Coil %>% filter(Manufacturing_Lot == "Lot3")


# # Difference of means
# t.test(Lot11$PSI, Lot22$PSI, Lot33$PSI,  paired = TRUE)

# Lot1v2 <- t.test(Lot11$PSI, Lot22$PSI,  paired = TRUE)
# Lot2v3 <- t.test(Lot22$PSI, Lot33$PSI,  paired = TRUE)
# Lot1v3 <- t.test(Lot11$PSI, Lot33$PSI,  paired = TRUE)

# Lot1v2
# Lot2v3
# Lot1v3




