# MechaCar_Statistical_Analysis

  The purpose of this analysis is to see what factors effect vehicle performance on our cars.

## Linear Regression to Predict MPG
  
  We looked at 5 factors that may effect the mpg which were Spoiler Angle, vehicle weight, length, ground clearance, and all wheel drive. Based off of our linear model I listed the factors in order of positive correlation 1 being the the most important and 5 the least important
   1. Spoiler Angle
   2. All Wheel Drive
   3. Vehicle Weight
   4. vehicle length
   5. ground clearance

  The slope of our R^2 is positive

![image](https://user-images.githubusercontent.com/68198233/160719574-fa9e287c-e226-4ffa-a979-6c268d1d5581.png)


![image](https://user-images.githubusercontent.com/68198233/160722244-ea94a9be-fa4c-40db-9620-38f7aa39a575.png)


##  Summary Statistics on Suspension Coils

  Currently Lot 3 does not meet design criteria, it's variance is over 100 psi, however our other two lots are well within the reccommended variance of 100 psi.
  
  ![image](https://user-images.githubusercontent.com/68198233/160720565-c426c5b0-415d-4ebe-ad66-98b6ef3c137b.png)

  

## T-Tests on Suspension Coils
  
  The t test indicate that lots 1 and 2 are closest to the mean, with lot 3 being the furthest.
  


## Study Design: MechaCar vs Competition

  To look at consumer interest across vehicle manufacturers, I would analyze the revenue produced by each manufacturer by vehicle type. 
  
  Hypotehsis: Certain vehicle types drive sales
  
  Alternative: Hypothesis: Vehicle types don't drive sales
  
  ### How to measure? 
    - number of vehicles sold for each type
    - Revenue gained by vehicle type
    
 ### How to analyze?
    t test, 
      1) For each manufacturer see the difference in means of:
        - sales per vehicle type
        - sales overall by company
        
        Linear Model
       2) Check proportion of vehhicle type sold per company, and see if it is a predictor of sales.
