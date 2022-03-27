library(dplyr)
library(knitr)
library(ggplot2)
MPGData <- read.csv(file = "MechaCar_mpg.csv")
Linear_Model_MPG<-lm(formula = mpg~vehicle_length
                     +vehicle_weight
                     +spoiler_angle
                     +ground_clearance
                     +AWD,
                     data = MPGData)

Lin_Mod_Mpg_Summary = summary(Linear_Model_MPG)
Lin_Mod_Mpg_Summary

