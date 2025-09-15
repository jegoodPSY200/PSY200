#Measurement and Reliability
#9/18/25

#First let's load the "psych" package

library(psych)

#Let's use some data that is embedded in R to learn. Run the code chunk below, what does it do?

data()

#Let's pick a data set to work with--we'll use "bfi" which assessed the Big 5 personality traits. 
#Look at the code below, then run it line by line. Let's see if we can figure out what it does.
bfi
head(bfi)
bfi.keys

data <- bfi


#One of the first things we will want to do with any data set is examine what is in it. 
#Let's go through some commands:

str(data)
nrow(data)
ncol(data)

#Now let's learn how to access and change columns in a data set, then save it. 
#The '$' symbol can be used to "look inside a data set using the name of a column"


data$gender
data$A1

#Remember, if you want to look at just the first few rows, use the head() command.
head(data$gender)
head(data$A1)

#Is 'gender' qualitative or quantitative? Is 'A1' qualitative or quantitative?
str(data$gender)
str(data$A1)

#We can recode variables so that they are appropriately classified using 'as.factor' or 'as.numeric'.

data$gender <- as.factor(data$gender)
str(data$gender)

data$gender <- as.numeric(data$gender)
str(data$gender)

#Ok now let's look at relationships between variables.

cor(x = data$A2,y = data$A3, use = "complete.obs")


#If we want to look at a correlation matrix, let's make a new dataframe with only the items we want.
Agree <- data.frame(data$A1, data$A2, data$A3, data$A4, data$A5)

#Now we can use the 'cor' function to get the correlations between all variables in the dataset.
cor(Agree, use = "complete.obs")
AgreeCorMatrix <- cor(Agree, use = "complete.obs")


#Do you think the Agreeableness subscale is internally consistent? Let's calculate Cronbach's alpha. 
alpha(AgreeCorMatrix, check.keys = TRUE, na.rm = TRUE)

