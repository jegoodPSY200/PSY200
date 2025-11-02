#PSY 200 Homework 7
#ADD YOUR NAME HERE
#ADD THE DATE HERE

#The purpose of this assignment is to practice working with regression.

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
#2. Save this script with the following file name: LastName_HW7.R

#For this assignment we will be working with the same data we used for HW 6.The full reference
#and a summary are below.
  
#Dawtry, R. J., Sutton, R. M., & Sibley, C. G. (2015). Why wealthier people think people are 
#wealthier, and why it matters: From social sampling to attitudes to redistribution. 
#Psychological Science, 26, 1389-1400.
  
#Summary by the [Open Stats Lab](https://sites.google.com/view/openstatslab/home/correlation-activities?authuser=0) as:
  
#In this research, Dawtry, Sutton, and Sibley (2015) wanted to examine why people differ in their 
#assessments of the increasing wealth inequality within developed nations. Previous research 
#reveals that most people desire a society in which the overall level of wealth is high and that 
#wealth is spread somewhat equally across society. However, support for this approach to income 
#distribution changes across the social strata. In particular, wealthy people tend to view 
#society as already wealthy and thus are satisfied with the status quo, and less likely to 
#support redistribution. In their paper Dawtry et al., (2015) sought to examine why this is 
#the case. The authors propose that one reason wealthy people tend to view the current system 
#is fair is because their social-circle is comprised of other wealthy people, which biases 
#their perceptions of wealth, which leads them to overestimate the mean level of wealth across 
#society.
  
#To test this hypothesis, the authors conducted a study with 305 participants, recruited from 
#an online participant pool. Participants reported their own annual household income, the 
#income level of those within their own social circle, and the income for the entire population. 
#also rated their perception of the level of equality/inequality across their social circle 
#and across society, their level of satisfaction with and perceived fairness of the current 
#system (measured using two scales), their attitudes toward redistribution of wealth (measured 
#using a four-item scale), and their political preference.

#3. Run the following lines of code to load packages and the dataset into this R session.
library(psych)
library(readr)
dataHW7<- read_csv("Dawtry Sutton and Sibley 2015 Study 1a edited.csv")
str(dataHW7)
  
#In Hw6 we calculated several correlations. Now we will work with regression. 
#Let's start with bivariate relationships. Remember - what does the term "bivariate" mean?

#4. Calculate the correlation between Household_Income and Sup4R. (Sup4R is Support for Redistribution of Wealth) 
#Type the correlation coefficient and the confidence interval in a comment (Hint - if you copy past code, make sure you adjust the name of the dataset to look inside!)




#5. Now use bivariate regression to look at the relationship between Household Income and Sup4R.
#Run the code below. Type the standardized regression coefficient AND the confidence interval in a comment.

model1 <- lm(scale(Sup4R) ~ scale(Household_Income), data=dataHW7)
summary(model1)
confint(model1)
  

#6. Look at the correlation coefficient and the regression coefficient you just calculated. What do you notice?



#7. Write a sentence describing the bivariate relationship between Household Income and Support for Redistribution of Wealth.

  


#8. Is it really people's personal income that predicts Sup4R? Or could it be the wealth of the neighborhood/people around them?
#Run the code below to calculate a multiple regression equation. (Notice what is different from the bivariate regression code.)

model2 <- lm(scale(Sup4R) ~ scale(Household_Income) + scale(Social_Circle_Mean_Income), data=dataHW7)
summary(model2)
confint(model2)

#What is the regression coefficient for Household Income now? Is it significant? (type your answer in a comment)

  

#What is the regression coefficient for Social Circle Income? Is it significant? (type your answer in a comment)

  

#Now, write a sentence describing the beta for Household Income (like we practiced in class last week).
  


#9. Let's do another one! Calculate the correlation between Household Income and Fairness (Fairness is how much people perceive the current economic situation as fair).


#Write a sentence describing the bivariate relationship between Household Income and Fairness.

 

#Run a bivariate regression with Household Income predicting Fairness. (Hint - copy and edit the code above)



#Type the regression coefficient and confidence interval in a comment.

  

#10. Now let's see if it is really people's personal income or the wealth of the people around them that predicts Fairness.
#Run a multiple regression with Household_Income and Social_Circle_Mean_Income predicting Fairness.



#What is the regression coefficient for Household Income? Is it significant? (type your answer in a comment)

  

#What is the regression coefficient for Social Circle Income? Is it significant? (type your answer in a comment)

  

#Write a sentence describing the beta for Household Income (like we practiced in class last week).

  

#Is the relationship between Household Income and Fairness spurious? Why or why not?
  


-------------------------------------------------------------------------------------
#11. How easy/hard was this assignment? How much time did it take you? 
  #What questions do you have about R? 
  #Use this space to add anything additional that you would like Charlotte, Victoria, or Dr. Good to know about your completion of this assignment or using R so far. 
  
#12. To pledge your homework, add your name to the blank following the pledge below:
  #On my honor I have neither given nor received unauthorized information regarding this work, 
  #and have followed all regulations regarding it. ___________________
  
#I used the following resources to complete this assignment: _____________________________
  
#13. Save this script and export to your Downloads folder. Then upload it to Moodle under the Homework tab.