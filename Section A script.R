#Analysis of Class Data Collected for APA Mini-Manuscript Assignment - Section A
#10/16/25

#load packages
library(psych)
library(readr)

#load in our data and take a look at it
dataA<- read_csv("Section A data.csv")
str(dataA)

#recode categorical variables to be factors
dataA$gender <- factor(dataA$gender, levels = c(1,2), labels = c("man", "woman"))
dataA$race <- factor(dataA$race, levels = c(1,2,3,4,5,6), labels = c("Asian or Asian American", "Black or African American", "Hispanic or Latino/a/x", "Indigenous or Native American", "White", "Additional"))

#Who are our participants? Let's graph and get descriptive stats
hist(dataA$age)
describe(dataA$age)
summary(dataA$age)

#how else can we describe our participants?


#Now let's take a look at our two main variables (predictor and outcome)


#Finally we can look at the relationship between the two variables
plot(dataA$total_moves, dataA$total_chain)
cor.test(dataA$total_moves, dataA$total_chain)



#we can also make a fancier plot that shows a best fit line (will explain what this is later)

library(ggplot2)

ggplot() + geom_point(aes(dataA$total_moves,dataA$total_chain)) + 
  geom_smooth(aes(dataA$total_moves,dataA$total_chain), method="lm", se=F)

