# MechaCar_Statistical_Analysis

  The purpose of this analysis is to see what factors effect vehicle performance on our cars.

## Linear Regression to Predict MPG
  
  We looked at 5 factors that may effect the mpg which were Spoiler Angle, vehicle weight, length, ground clearance, and all wheel drive. Based off of our linear model I listed the factors in order of positive correlation 1 being the the most important and 5 the least important
   1. Spoiler Angle
   ![image](https://user-images.githubusercontent.com/68198233/180487597-1776dbdc-0e66-4831-9196-196ed47e2e37.png)

   2. All Wheel Drive
   3. Vehicle Weight
   4. vehicle length
   5. ground clearance
   ![image](https://user-images.githubusercontent.com/68198233/180487859-9b6eabcf-cb56-4d2e-99d1-42bda539cb38.png)


  The slope of our R^2 is positive

![image](https://user-images.githubusercontent.com/68198233/160719574-fa9e287c-e226-4ffa-a979-6c268d1d5581.png)


![image](https://user-images.githubusercontent.com/68198233/160722244-ea94a9be-fa4c-40db-9620-38f7aa39a575.png)


##  Summary Statistics on Suspension Coils

  Currently Lot 3 does not meet design criteria, it's variance is over 100 psi, however our other two lots are well within the reccommended variance of 100 psi.
  
  ![image](https://user-images.githubusercontent.com/68198233/160720565-c426c5b0-415d-4ebe-ad66-98b6ef3c137b.png)

  

## T-Tests on Suspension Coils
  
The t tests are rather odd, it indicates:


### The Mean of all 3 lots is under 1500
  When looking at the mean PSI agains the mean, it is 1498.78, though under the mean is close and within the 95% confidence interval, with a p value of 0.06, which is over over the usual 0.05. The degrees of freedom is the highes at 149
  
  
  ![image](https://user-images.githubusercontent.com/68198233/161868809-a20b1763-fa54-430c-89a2-b3a34779b360.png)
  
  
### Lot 1 is the same as the mean but with a high p value

  Lot 1 has a mean of exactly 1500, though with a p value of 1, and a t value of zero
  ![image](https://user-images.githubusercontent.com/68198233/161868885-ee116a5e-8d0b-4052-9457-8b04c7b50a2e.png)

  
 ### Lot 2 is roughly the mean
  The t value is 0.5175 which makes lot 2 the 2nd closest to the mean.
 
  
  ![image](https://user-images.githubusercontent.com/68198233/161868935-8b986b0c-f082-4998-8062-b495eb877b1f.png)

  
 ### Lot 3 is under the mean
  Is certainly under the mean, with its confidence interval under the mean.
  
  ![image](https://user-images.githubusercontent.com/68198233/161868983-e1a83aae-fa7d-4aa5-b7a6-e692352aa10a.png)


  


## Study Design: MechaCar vs Competition

  To look at consumer interest across vehicle manufacturers, I would analyze the revenue produced by each manufacturer by vehicle type. 
  
  Hypothesis: Certain vehicle types drive sales
  
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
