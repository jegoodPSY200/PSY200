#10/30/25
#Looking at 3rd variables in our class data

#SECTION A
library(psych)
library(readr)
dataA<- read_csv("Section A data.csv")

#Bivariate correlation
cor.test(dataA$total_moves, dataA$total_chain)

#Bivariate regression
model1 <- lm(scale(total_chain) ~ scale(total_moves), data=dataA)
summary(model1)
confint(model1)

#Is there a 3rd variable?
cor.test(dataA$age, dataA$total_chain)

#Multiple regression
model2 <- lm(scale(total_chain) ~ scale(total_moves) + scale(age), data=dataA)
summary(model2)
confint(model2)

#What can we conclude?

#-------------------------------------------------------------------------------
#SECTION B
library(psych)
library(readr)
dataB<- read_csv("Section B data.csv")

#Bivariate correlation
cor.test(dataB$total_moves, dataB$total_chain)

#Bivariate regression
model1 <- lm(scale(total_chain) ~ scale(total_moves), data=dataB)
summary(model1)
confint(model1)

#Is there a 3rd variable?
cor.test(dataB$age, dataB$total_chain)

#Multiple regression
model2 <- lm(scale(total_chain) ~ scale(total_moves) + scale(age), data=dataB)
summary(model2)
confint(model2)

#What can we conclude?