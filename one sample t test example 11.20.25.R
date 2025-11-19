#One-sample t-test example
#11/20/25

library(lsr)
library(psych)

#Virtual Learning and Literacy

#Educators and legislators are concerned that virtual learning during the pandemic has had a negative effect on 
#students' learning, particularly literacy development among elementary aged children. 


#Using COVID-19 relief funding from the federal government, schools created summer enrichment "camp" aimed at 
#improving literacy among kindergarten, first, and second grade students. The summer camp was free for all students, 
#and enrollment was voluntary.

#Was the summer enrichment camp successful? In other words, did kids who attended camp improve their literacy?

#A local school collected data on lexile levels (an indicator of reading ability) at the end of virtual first grade. 
#The mean lexile score for the population of 1st graders at this school after a year of virtual learning was 80 
#(below grade level). The schools also collected data on lexile levels for first graders who attended the summer 
#enrichment camp. For that sample of 28 students, the mean lexile score at the end of the summer was 88, with a 
#standard deviation of 7 points.


#STEP 1: State the Hypotheses.
#What is the research hypothesis?

[enter research hypothesis here]

#What is the statistical hypothesis? (null and alternative)

[enter null and alternative statistical hypotheses here]
#H0: mu = 80
#H1: mu does not equal 80

#Run the line of code to create an object called lexile' that holds the lexile scores for the sample of 28 students.

lexile <- c(85, 92, 78, 99, 88, 87, 90, 76, 94, 80, 100, 97, 89, 82, 72, 80, 88, 90, 88, 92, 88, 100, 88, 96, 87, 84, 86, 88)

#STEP 2: Set the criteria for a decision.
#alpha = ?
#one-tailed or two-tailed test?

#STEP 3: Compute the test statistic
t.test(lexile, mu=80, alternative = "two.sided")

#how would we make it one-tailed?
t.test(lexile, mu=80, alternative="greater")

#what if we mis-specified the direction of our test?
t.test(lexile, mu=80, alternative="less")

#STEP 4: Make a decision

#Written results
#We conducted a one sample t-test to determine whether mean lexile scores for 1st graders who enrolled in the summer 
#enrichment camp were higher than scores in the population of 1st graders at the end of the academic year. Results 
#indicated a significant difference (t(27) = 6.04, p < .001) between campers' lexile scores (M = 88, SD = 7.01)
#and population scores (M = 80). Students who participated in the summer enrichment camp had higher literacy skills 
#at the end of the summer compared to the population of first graders at the end of first grade.


### *What can we conclude about our RESEARCH hypothesis?*


