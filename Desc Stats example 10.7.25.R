#Descriptive Statistics Examples
#10/7/25


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

#First load the packages that you need.
library(psych)
library(readr)

#Now let's read in the data from an excel file, check the structure of the variables.
data<- read_csv("Dawtry Sutton and Sibley 2015 Study 1a edited.csv")
str(data)

data$gender <- factor(data$gender, levels = c(1,2), labels = c("man", "woman"))
#note that this is a problematic, binary def of gender but that is what they used.
str(data$gender)

#Let's describe how old the participants are. We can do this with individual functions...
#reminder - what does the na.rm =TRUE mean?
hist(data$age,na.rm=TRUE)
min(data$age, na.rm=TRUE)
max(data$age, na.rm=TRUE)
mean(data$age, na.rm=TRUE)
median(data$age, na.rm=TRUE)
sd(data$age, na.rm=TRUE)

#Or we can use functions that give us lots of descriptive stats at once.
describe(data$age)
summary(data$age)


#Now let's describe how much income participants make in a year.
describe(data$Household_Income)
hist(data$Household_Income)


#what measure of central tendency would be best to describe household income?


#Gender is a factor variable so we can't use a histogram.
plot(data$gender)
summary(data$gender)

#Let's look at income separately by groups.
describeBy(data$Household_Income, group = data$gender, mat = TRUE)

#If we want to calculate a median income for men and for women separately, we need to subset the data.
data_men <- subset(data, gender == "man")
#edit that code to also subset women.


median(data_men$Household_Income, na.rm=TRUE)
#edit that code to also calculate the median for women.



#Now we can use this this info to write a paragraph describing the participants.