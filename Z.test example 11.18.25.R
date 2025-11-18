#One-sample Z test example
#11/18/25


#Let's say you overhear a tour guide at Davidson telling families that the cost of textbooks at Davidson is 
#lower than at other schools.You decide to investigate. You find that the average cost of textbooks (across the 
#population that is all liberal arts colleges in the US) is $534 per semester and the population standard deviation is $61.

#Next, you ask a random sample of 20 Davidson students what they spent on required textbooks this semester.

#First load the packages that you need.
library(BSDA)

#Now let's create some data.
sample_data <- c(399, 566, 500, 502, 558, 546, 522, 463, 479, 460, 376, 510, 514, 545, 554, 633, 459, 518, 443, 511)

#What is the mean amount of money spent by the participants in your sample?


#Was the tour guide correct? Let's test.

#STEP 1: State the Hypotheses.
#What is the research hypothesis?**


#What is the statistical hypothesis? (null and alternative)**

#H0: mu = 534
#H1: mu does not equal 534 

#STEP 2: Set the criteria for a decision.
#alpha = ?
#one-tailed or two-tailed test?
#critical value of Z = ?


#STEP 3: Compute the test statistic.
z.test(sample_data, alternative='two.sided', mu=534, sigma.x=61, conf.level=.95)

#STEP 4: Make a decision
#Should you reject or retain the null?

#Last step - write a sentence that describes the result of your z-test.



#-------------------------------------------------------
#Your turn! Work with a partner (or table) to answer the research question below.

#You are the Safety Officer for a company that makes fidgets. In an advertisement to recruit new factory workers, you 
#claim that your factories are safer than the average American factory. Is your claim accurate? You find that the average 
#number days between safety violations/accidents at all US factories that make fidgets is 22 days, and the 
#standard deviation is 3.

#You find the number of days between safety violations at each of your 10 factories. The data are below.
factory_data <- c(21, 19, 26, 21, 28, 24, 23, 27, 23, 28)

#What is the mean number of days between safety violations in your sample?


#STEP 1: State the Hypotheses.
#What is the research hypothesis?**


#What is the statistical hypothesis? (null and alternative)**


#STEP 2: Set the criteria for a decision.
#alpha = ?
#one-tailed or two-tailed test?
#critical value of Z = ?


#STEP 3: Compute the test statistic.


#STEP 4: Make a decision
#Should you reject or retain the null?


#Last step - write a sentence that describes the result of your z-test.
