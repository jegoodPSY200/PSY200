#PSY 200 Homework 6
#ADD YOUR NAME HERE
#ADD THE DATE HERE

#The purpose of this assignment is to practice working with correlation.

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
  #2. Save this script with the following file name: LastName_HW6.R

#For this assignment we will be working with real data from a study by Dawtry et al. (2015). We used this data in class
#on 10/7 when we were practicing descriptive statistics. The full reference and a summary are below.

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
data<- read_csv("Dawtry Sutton and Sibley 2015 Study 1a edited.csv")
str(data)

#In class on 10/7 we explored some of the variables individually. Now we will look at the relationships between variables.

 #4. Create a scatterplot with Household_Income on the x-axis and Sup4R on the y-axis. (Sup4R is Support for Redistribution of Wealth)


#looking at the scatterplot, do you think there is a correlation? If yes, is it positive or negative? weak or strong?


#Calculate the correlation between Household_Income and Sup4R. Hint - use the code we wrote for your APA Mini-manuscript.


#What is the correlation coefficient? Is it positive or negative? weak or strong?
 

#What is the confident interval? Based on the confidence interval what can you conclude about this correlation?



  #5. Now let's practice plotting and calculating correlation coefficients.

#Create a scatterplot with satisfaction on the x-axis and fairness on the y-axis. Then calculate the correlation coefficient
#for the relationship between the two variables.


#Create a scatterplot with satisfaction on the x-axis and Sup4R on the y-axis.Then calculate the correlation coefficient
#for the relationship between the two variables.


#Create a scatterplot with Household_Income on the x-axis and satisfaction on the y-axis.Then calculate the correlation coefficient
#for the relationship between the two variables.


  #6. Finally, let's  practice writing about multiple relationships.In the paragraph below, fill in the bracketed sections with
#your computed values and select which term to use to describe the relationships.


#Participants' satisfaction with the current economic situation was [weakly/strongly/not] [positively/negatively] correlated 
#with their perception of the situation as fair (r = [?]) and [weakly/strongly/not] [positively/negatively] correlated 
#with their support for redistribution of wealth (r = [?]). In other words, participants who were more satisfied 
#with the current economic situation viewed the system as [more/less] fair and were [more/less] supportive of actions 
#to change the system. 

#Participants who reported higher annual household incomes tended to report somewhat [lower/higher] satisfaction 
#with the economic situation (r = [?]).




-------------------------------------------------------------------------------------
  #7. How easy/hard was this assignment? How much time did it take you? 
  #What questions do you have about R? 
  #Use this space to add anything additional that you would like Charlotte, Victoria, or Dr. Good to know about your completion of this assignment or using R so far. 
  
  #8. To pledge your homework, add your name to the blank following the pledge below:
  #On my honor I have neither given nor received unauthorized information regarding this work, 
  #and have followed all regulations regarding it. ___________________
  
  #I used the following resources to complete this assignment: _____________________________
  
  #9. Save this script and export to your Downloads folder. Then upload it to Moodle under the Homework tab.