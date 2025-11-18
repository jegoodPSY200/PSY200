#PSY 200 Homework 8
#ADD YOUR NAME HERE
#ADD THE DATE HERE

#The purpose of this assignment is to practice working with one-sample hypothesis tests.

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
#2. Save this script with the following file name: LastName_HW8.R

#For this assignment, you will answer two research questions. You will need to determine the most appropriate
#statistical test to use in each of the two situations.

#3. Run the following lines of code to load packages and the dataset into this R session.
library(psych)
library(BSDA)

#SITUATION 1.
#You are a Psychology professor at Davidson. Your advisees come to you after webtree has run and
#tell you how unfair webtree is. They never get the courses they want! You wonder to yourself whether
#psychology majors are less satisfied with webtree than all students at Davidson. 
#This is an empirical question!

#You contact the registrar's office, who tells you that they administered a webtree satisfaction
#survey to all Davidson students just after webtree ran. Students answered the question "How satisfied 
#are you with webtree?" on a scale of 1 (very unsatisfied) to 5 (very satisfied). The mean for the population 
#was 3 (which corresponds to "neither satisfied nor unsatisfied") and the population standard deviation was 1.

#You then sample 20 Psychology majors after webtree.The data are below:

psych_majors <- c(3, 3, 3, 4, 2, 2, 3, 2, 3, 2, 4, 3, 2, 4, 3, 2, 3, 3, 2, 4)

#STEP 1: State the Hypotheses.
#What is the research hypothesis?**



#What is the statistical hypothesis? (null and alternative)**



#STEP 2: Set the criteria for a decision.
#alpha = ? 
#one-tailed or two-tailed test? 



#STEP 3: Compute the test statistic.




#STEP 4: Make a decision
#Should you reject or retain the null?



#Last step - write a sentence that describes the result of your test.

Using a one-sample [?]-test, I found that psychology majors [are/are not] less satisfied with
webtree than other Davidson students, [insert statistical results here]







#SITUATION 2.
#While eating lunch at Commons, you overhear an Economics major telling their friends that Davidson is a good 
#investment because Davidson graduates make more money at their first job after college than students from 
#other schools. You wonder if this is true?

#You find some data online from the National Bureau of Labor Statistics that tells you the average starting 
#salary for new college graduates is $60,260 per year.

#You then ask the Davidson Career Center to send you the starting salaries of 20 recent Davidson grads.
#The data are below:

Dav_salaries <- c(62920, 64760, 54670, 55050, 65260, 53840, 73820, 72860, 68240, 79020, 76650, 84820, 80080, 64490, 71410, 63980, 63740, 72240, 57220, 61420)

#STEP 1: State the Hypotheses.
#What is the research hypothesis?**



#What is the statistical hypothesis? (null and alternative)**



#STEP 2: Set the criteria for a decision.
#alpha = ? 
#one-tailed or two-tailed test? 



#STEP 3: Compute the test statistic.





#STEP 4: Make a decision
#Should you reject or retain the null?



#Last step - write a sentence that describes the result of your test.

Using a one-sample [?]-test, I found that recent Davidson graduates [have/do not have] higher starting 
salaries than recent grads from all schools, [insert statistical results here].


-------------------------------------------------------------------------------------
  #4. How easy/hard was this assignment? How much time did it take you? 
  #What questions do you have about R? 
  #Use this space to add anything additional that you would like Charlotte, Victoria, or Dr. Good to know about your completion of this assignment or using R so far. 
  
  #5. To pledge your homework, add your name to the blank following the pledge below:
  #On my honor I have neither given nor received unauthorized information regarding this work, 
  #and have followed all regulations regarding it. ___________________
  
  #I used the following resources to complete this assignment: _____________________________
  
  #6. Save this script and export to your Downloads folder. Then upload it to Moodle under the Homework tab.