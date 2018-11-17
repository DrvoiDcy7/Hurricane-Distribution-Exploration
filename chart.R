# Codes for STAT581 Project Hurricane Distribution Analysis
# Group member: Chengyuan Deng, Haodong Lu, Xiao Liu, Zhengjuan Fan
# Modified date: 2018.10


#histogram
hist(number4, freq = FALSE, main="Number Per Ten Years")
#frequency density
lines(density(number4), col= "blue")

#Empirical Cumulative Distribution Function
#plot(ecdf(number4),main="Empirical cumulative distribution function")

