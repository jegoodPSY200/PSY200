#Analysis of Class Data Collected for APA Mini-Manuscript Assignment - Section B
#10/16/25

#load packages
library(psych)
library(readr)

#load in our data and take a look at it
dataB<- read_csv("Section B data.csv")
str(dataB)

#recode categorical variables to be factors
dataB$gender <- factor(dataB$gender, levels = c(1,2), labels = c("man", "woman"))
dataB$license <- factor(dataB$license, levels = c(1,2), labels = c("no", "yes"))
dataB$car <- factor(dataB$car, levels = c(1,2), labels = c("no", "yes"))
dataB$race <- factor(dataB$race, levels = c(1,2,3,4,5,6), labels = c("Asian or Asian American", "Black or African American", "Hispanic or Latino/a/x", "Indigenous or Native American", "White", "Additional"))

#Who are our participants? Let's graph and get descriptive stats.
hist(dataB$age)
describe(dataB$age)
summary(dataB$age)

#how else can we describe our participants?



#Now let's take a look at our two main variables (predictor and outcome)



#Finally we can look at the relationship between the two variables
plot(dataB$total_moves, dataB$total_chain)
cor.test(dataB$total_moves, dataB$total_chain)

#we can also make a fancier plot that shows a best fit line (will explain what this is later)

library(ggplot2)

ggplot() + geom_point(aes(dataB$total_moves,dataB$total_chain)) + 
  geom_smooth(aes(dataB$total_moves,dataB$total_chain), method="lm", se=F)


