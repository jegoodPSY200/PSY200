#PSY 200 Homework 3
#ADD YOUR NAME HERE
#ADD THE DATE HERE

#Throughout the semester, we will be learning and working with Excel and R Studio. 
#Homework assignments are designed to give you practice with the programs in small doses. 
#Sometimes the assignments will review things we learned in class; sometimes you will be asked to tackle new things on your own. 

#Google is your friend. If you do not know/understand how to do something, try googling it! 
#You can also work with a classmate, but make sure that BOTH of you ultimately understand how to do the task at the end. 

#You are encouraged to email our Class Tutors (Charlotte and Victoria) with questions!You can also come to office hours and I can help you.
#Do NOT use generative AI for help with homework.

#Homework assignments should not take more than 30 to 60 minutes. 
#If you have spent more than an hour on it, STOP. Email Charlotte or Victoria. 
#If they are unavailable, come to my office hours or email me.

------------------------------------------------------------------------------
### Follow the instructions below to complete the assignment:
#1. At the top of this script, add your name and the date.
#2. Save this script with the following file name: LastName_HW3.R

#3. First, let's review. Below, write code to do the following:

  #create an object named x and assign it the value 7
  #create an object named y and assign it the value of 10
  #print the sum of x and y (output it to the console)
  #create an object named z and assign it to be the product of x and y
  #print z (output it to the console)

#4. Good! Now, write code to do the following:
  
  # create a vector named "count" that includes the following list of values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    # *(hint: use the concatenate function from last week's HW)*
  # multiply "count" by 3 and assign it the name "triple"
  # create a scatterplot with "count" on the x-axis and "triple" on the y-axis

#5. Ok now let's try some new stuff! Run the code below to load the package called "psych"and 
  #to create an object called data that holds the bfi dataset we worked with in class.

library(psych)
data <- bfi

#6. For the next several questions, you will need to copy, paste, and edit your code from class.
#First, calculate the correlation between the variables listed below. Type the correlation coefficient for each set of variables as a comment.

  #a. C1 and C2
  #b. E4 and E5
  #c. N3 and N4
  #d. O1 and O4

#7. Make a new dataframe named 'Neuroticism' that includes only the 5 variables on the neuroticism subscale. 
#(hint - use bfi.keys to check what variables are in each subscale)

#8. Create a correlation matrix of all 5 variables in Neuroticism. Save that as an object called 'NeurCorMatrix'.

#9. Looking at the correlation matrix you created, do the items seem to be highly correlated with each other? 
#Type your answer as a comment.

#10. Compute Cronbach's alpha (internal scale reliability) for the neuroticism subscale.
#Look at the alpha value - can you conclude that the neuroticism subscale has adequate internal scale reliability? 
#Type your answer as a comment.


-------------------------------------------------------------------------------------
#11. How easy/hard was this assignment? How much time did it take you? 
  #What questions do you have about R? 
  #Use this space to add anything additional that you would like Charlotte, Victoria, or Dr. Good to know about your completion of this assignment or using R so far. 
  
#12. To pledge your homework, add your name to the blank following the pledge below:
  #On my honor I have neither given nor received unauthorized information regarding this work, 
  #and have followed all regulations regarding it. ___________________

  #I used the following resources to complete this assignment: _____________________________

#13. Save this script and export to your Downloads folder. Then upload it to Moodle under the Homework tab.