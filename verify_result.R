# Codes for STAT581 Project Hurricane Distribution Analysis
# Group member: Chengyuan Deng, Haodong Lu, Xiao Liu, Zhengjuan Fan
# Modified date: 2018.10


# verfiy memoryless property of possion process
part1.pois = rpois(500, lambda = mean(number4[1:8]))
part2.pois = rpois(500, lambda = mean(number4[9:16]))
qqplot(part1.pois, part2.pois, main="QQ-plot to verify memoryless property", xlim = c(-10, 30), ylim = c(0, 20))
abline(0,1)
dev.copy(jpeg,filename="memoryless.jpg")
dev.off()

# plot the number of hurricanes vs times
plot(year4, number4, type = 'l', xlab="Time (decades)", ylab="Numbers", col="blue", main=" Numbers of Hurricanes 4 over Time", xlim = c(1850, 2020))
dev.copy(jpeg,filename="plotOvertime4.jpg");
dev.off ();

plot(year5, number5, type = 'l', xlab="Time (decades)", ylab="Numbers", col="blue", main=" Numbers of Hurricanes 5 over Time", xlim = c(1921, 2020))
dev.copy(jpeg,filename="plotOvertime5.jpg");
dev.off ();

# Test by Category 5 Hurricans
x.pois <- rpois(500, lambda = mean(data5))
qqplot(x.pois, number4, main="QQ-plot Possion Distribution of Category 5 Hurricans", xlim = c(-10, 30), ylim = c(0, 20))
abline(0,1)
dev.copy(jpeg,filename="category5.jpg")
dev.off ()