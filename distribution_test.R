# Codes for STAT581 Project Hurricane Distribution Analysis
# Group member: Chengyuan Deng, Haodong Lu, Xiao Liu, Zhengjuan Fan
# Modified date: 2018.10


#1. normal distribution
x.norm <- rnorm(500, mean = mean(number4), sd=sd(number4))
qqplot(x.norm, number4, main="QQ-plot Normal Distribution", xlim = c(-10, 30), ylim = c(0, 20))
abline(0,1) 

#2. possion distribution
# use rpois() to generate sample data
x.pois <- rpois(500, lambda = mean(number4))
qqplot(x.pois, number4, main="QQ-plot Possion Distribution", xlim = c(-10, 30), ylim = c(0, 20))
abline(0,1) 

#3. exponential distribution
x.exp <- rexp(500, rate = 1/mean(number4))
qqplot(x.exp, number4, main="QQ-plot Exponential Distribution", xlim = c(-10, 30), ylim = c(0, 20))
abline(0,1) 