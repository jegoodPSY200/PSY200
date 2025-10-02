#PSY 200 Homework 4
#ADD YOUR NAME HERE
#ADD THE DATE HERE

#The purpose of this assignment is to practice working with descriptive statistics (central tendency and variability)

#Google is your friend. If you do not know/understand how to do something, try googling it! 
#You can also work with a classmate, but make sure that BOTH of you ultimately understand how to do the task at the end. 

#You are encouraged to email our Class Tutors (Charlotte and Victoria) with questions! You can also come to office hours and I can help you.
#Do NOT use generative AI for help with homework.

#Homework assignments should not take more than 30 to 60 minutes. 
#If you have spent more than an hour on it, STOP. Email Charlotte or Victoria. 
#If they are unavailable, come to my office hours or email me.

------------------------------------------------------------------------------
### Follow the instructions below to complete the assignment:
#1. At the top of this script, add your name and the date.
#2. Save this script with the following file name: LastName_HW4.R
  
#3. Run the following lines of code to load packages and the dataset into this R session.

library(psych)
library(readr)
data <- read_csv("data-for-desc-viz.csv", col_names = TRUE)
data

  #In this dataset, there are 4 variables (i.e., column names). A key to what they mean is below:
    #Region refers to the region of the globe that the data refer to. 
    #GNI refers to Gross National Income (i.e., the average income in USD of the average person in the region). 
    #Year refers to the year the data were collected (1995 - 2018 in 5 year increments)
    #Sex refers to whether this observation (i.e., GNI) was calculated for only men or only women (*note this isn't a very inclusive way to categorize people). 

#4. Make sure that all the data are the right "type." Region, Year, & Sex should be factor/categorical while GNI should be numeric/continuous. 
  #First, write a line of code to check the structure of your dataset. That will tell you the current type of each of the variables. 
    #(hint - you have checked the structure of a dataset several times before)

str(data)

  #What is the current type of each variable?

     #[Region and Sex are character/text and GNI and Year are numeric]

  #If any variables need to be changed into factor/categorical variables, use the as.facto() command to do that.
    #(I've written one line of code for you - copy, paste, and edit to do the other variables.)

data$Region <- as.factor(data$Region)



  #Now write a line of code to check the structure of your dataset again to verify that the 4 variables are now the correct types.



#5. Now let's start describing some data. We will work with the GNI variable in the dataset, which is numeric.

  #first take a look at GNI. Use the hist() command to create a histogram of the GNI variable.



  #Run the next two lines of code to check the skew and kurtosis of GNI. 
   #In general, if the skew is between -.5 and +.5, the distribution is fairly normal. If the kurtosis value is close to 0, the distribution is fairly normal/mesokurtic.

skew(data$GNI)
kurtosi(data$GNI)


  #So...this variable is not exactly normal, but it's also not terribly off from normal. Let's proceed with other ways to describe it.
  #First we will calculate central tendency. 
mean(data$GNI)

  #Now use the mode() and median() commands to calculate the other measures of central tendency.



  #What happened when you calculated the mode of this continuous variable? 

   

  #Now let's calculate variability. Write a line of code using the var() command to calculate the variance of GNI.

  #Now write a line of code using the sd() command to calculate the standard deviation of GNI


  #Finally, let's do all of this with one function. Use the describe() function to calculate descriptive statistics for GNI. 
    #Notice what statistics are reported with this function.


#6. Ok, the last thing we will do is use more than one variable. It's interesting to look at GNI on its own, but it would 
#be more interesting to see how GNI might be the same or different across other variables in the dataset. We can 
#calculate descriptives for one variable at each level of another variable using the describeBy() function. 

  #The following two lines of code calculate descriptive statistics for GNI at each level of Sex. 
    #The "group = data$Sex" argument is what tells R which grouping/categorical value to use in this calculation. 
    #Run the line of code.
describeBy(data$GNI, group = data$Sex, mat = TRUE)

  #Copy, paste, and edit the lines of code above to now calculate descriptive statistics for GNI grouped separately by Region (instead of Sex).


  #Copy, paste, and edit the lines of code above to now calculate descriptive statistics for GNI grouped separately by Year (instead of Region).



-------------------------------------------------------------------------------------
#7. How easy/hard was this assignment? How much time did it take you? 
  #What questions do you have about R? 
  #Use this space to add anything additional that you would like Charlotte, Victoria, or Dr. Good to know about your completion of this assignment or using R so far. 
  
#8. To pledge your homework, add your name to the blank following the pledge below:
  #On my honor I have neither given nor received unauthorized information regarding this work, 
  #and have followed all regulations regarding it. ___________________
  
  #I used the following resources to complete this assignment: _____________________________
  
#9. Save this script and export to your Downloads folder. Then upload it to Moodle under the Homework tab.