#independent samples t-test AND paired samples t-test example
#12/2/25

library(lsr)
library(psych)

## Virtual Learning and Literacy: Take 2

#Educators and legislators are concerned that virtual learning during the pandemic has had a negative effect on 
#students' learning, particularly literacy development among elementary aged children. 

#Using COVID-19 relief funding from the federal government, schools created summer enrichment "camp" aimed at 
#improving literacy among kindergarten, first, and second grade students. The summer camp was free for all 
#students, and enrollment was voluntary.


### Was the summer enrichment camp successful? In other words, did kids who attended camp improve their literacy?

--------------------------------------------------------------------
  
## Independent Samples t-test
  
#A local school collected data on lexile levels (an indicator of reading ability) at the beginning of second 
#grade, after a year of virtual learning in first grade. The mean lexile score for a random sample of 28 second 
#graders who attended the summer enrichment camp prior to the school year was 88, with a standard deviation of 
#7 points. The mean lexile score for random sample of 28 second graders who did not attend the summer enrichment 
#camp prior to the school year was 82, with a standard deviation of 7.5 points.

#STEP 1: State the Hypotheses.
#What is the research hypothesis?
  
#H0: There is a difference in literacy between campers and noncampers
#H1: There is no difference in literacy between campers and noncampers

  
#What is the statistical hypothesis? (null and alternative)

#H0: mu for the campers - mu for the non campers = 0
#H1: mu for the campers - mu for the non campers does not equal 0

  
#first let's create some hypothetical data. Run the code below to create two objects, one that holds the lexile scores for all students sampled, and one that holds the info on whether or not the students attended the summer enrichment camp. 

group <- c('camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'camp', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control', 'control')

lexile_B <- c(85, 92, 78, 99, 88, 87, 90, 76, 94, 80, 100, 97, 89, 82, 72, 80, 88, 90, 88, 92, 88, 100, 88, 96, 87, 84, 86, 88, 80, 85, 71, 96, 83, 81, 84, 70, 88, 74, 94, 91, 83, 74, 66, 74, 81, 84, 82, 86, 81, 95, 82, 92, 81, 76, 79, 83)

#now create a dataframe that includes both of these variables.
data_B <- data.frame(group, lexile_B)

data_B$group <- as.factor(data_B$group)
data_B$lexile_B <- as.numeric(data_B$lexile_B)

data_B

#let's look at our groups (two samples)
describeBy(data_B$lexile_B, group=group,mat=TRUE)

#Remember that if we want to do calculations on each group separately we need to subset the data.
data_Bcamp <- subset(data_B, group == "camp")
data_Bcontrol <- subset(data_B, group == "control")

mean(data_Bcamp$lexile_B)
sd(data_Bcamp$lexile_B)
var(data_Bcamp$lexile_B)

mean(data_Bcontrol$lexile_B)
sd(data_Bcontrol$lexile_B)
var(data_Bcontrol$lexile_B)

#STEP 2: Set the criteria for a decision.
#alpha = ?
#one-tailed or two-tailed test?

#STEP 3: Compute the test statistic
t.test(data_Bcamp$lexile_B, data_Bcontrol$lexile_B, var.equal=TRUE)

#how would you turn this into a Welch's test? a one-tailed test?
t.test(data_Bcamp$lexile_B, data_Bcontrol$lexile_B, var.equal=FALSE)

t.test(data_Bcamp$lexile_B, data_Bcontrol$lexile_B, var.equal=TRUE, alternative="less")


#STEP 4: Make a decision


### Written results
#We conducted an independent samples t-test to determine whether mean lexile scores for incoming 2nd graders
#who enrolled in the summer enrichment camp were different than mean lexile scores for incoming 2nd graders who 
#did not participate in the camp. Results indicated a significant difference (t(54) = 3.08, p = .003) 
#between campers' lexile scores (M = 88, SD = 7.01) and non-campers' scores (M = 82, SD = 7.52). Following 
#a year of virtual learning in 1st grade, students who participated in the summer enrichment camp had higher 
#literacy skills at the beginning of 2nd grade compared to students who did not participate in the summer 
#enrichment camp.

### *What can we conclude about our research hypothesis?*





--------------------------------------------------------------------

## Paired Samples t-test
  
#Now, let's say we are interested in measuring whether children's literacy skills (lexile scores) improved 
#over the course of the camp. To test this, researchers take a random sample of 30 campers and assess their 
#literacy skills at the beginning and end of the camp. The researchers want to know if children's scores 
#changed from pre- to post-.

#STEP 1: State the Hypotheses.
#What is the research hypothesis?

#H0 = no difference in literacy before and after camp
#H1 = there is a difference in literacy before and after camp

  
#What are the statistical hypotheses?

#H0: mu diff = 0
#H1: mu diff does not equal 0


##Let's create some data again.

time <- c('pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','pre','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post','post')

lexile_W <- c(85, 81, 78, 90, 88, 86, 90, 76, 88, 80, 90, 79, 89, 82, 72, 80, 84, 90, 88, 85, 88, 91, 83, 92, 87, 84, 86, 88, 80, 85, 90, 96, 88, 81, 84, 91, 88, 93, 94, 91, 83, 89, 95, 89, 92, 80, 82, 86, 91, 95, 82, 92, 81, 86, 89, 93, 93, 91, 89, 94)

data_W <- data.frame(time, lexile_W)

data_W$time <- as.factor(data_W$time)
data_W$lexile_W <- as.numeric(data_W$lexile_W)

#Take a look at your data.
data_W
str(data_W)

#let's look at our two timepoints
describeBy(data_W$lexile_W, group=time, mat=TRUE)

#Now let's subset the data and then create mean and sd objects.
data_Wpre <- subset(data_W, time == "pre")
data_Wpost <- subset(data_W, time == "post")

mean(data_Wpre$lexile_W)
sd(data_Wpre$lexile_W)

mean(data_Wpost$lexile_W)
sd(data_Wpost$lexile_W)


#STEP 2: Set the criteria for a decision.
#alpha = ?
#one-tailed or two-tailed test?


#STEP 3: Compute the test statistic

#The code to run a paired samples t-test is really similar! Just add paired = TRUE (note that you could specify paired=FALSE for the independent samples t test but without that argument the independent samples test is the default)

t.test(data_Wpre$lexile_W, data_Wpost$lexile_W, var.equal=TRUE, paired=TRUE)


#How would you change the code to do a one-tailed paired samples t-test? Copy and paste the code from above and change it to be a one-tailed paired samples t-test.

t.test(data_Wpre$lexile_W, data_Wpost$lexile_W, var.equal=TRUE, paired=TRUE, alternative = "less")


#STEP 4: Make a decision



#Written results
#We conducted a paired samples t-test to determine whether campers' lexile scores at the end of camp differed 
#from their scores at the beginning of camp. Results indicated a significant difference (t(29) = 3.06, p = .005) 
#between campers' lexile scores at the beginning (M = 84.83, SD = 4.89) and end of the summer enrichment 
#camp (M = 88.93, SD = 4.70). Students who participated in the 6-week summer enrichment camp showed a 
#significant increase in literacy skills over the course of the camp. 

### *What can we conclude about our research hypothesis?*


