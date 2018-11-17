# Codes for STAT581 Project Hurricane Distribution Analysis
# Group member: Chengyuan Deng, Haodong Lu, Xiao Liu, Zhengjuan Fan
# Modified date: 2018.10


install.packages("openxlsx")
any(grepl("openxlsx",installed.packages()))
library("openxlsx")

rm(list=ls())
# use the exact file name
# hurricane4 <- read.xlsx(hurricane#4_clean.xlsx)
# hurricane5 <- read.xlsx(hurricane#5_clean.xlsx)
hurrican4 <- read.xlsx("hurricaneData.xlsx", 1)
hurrican5 <- read.xlsx("hurricaneData.xlsx", 3)
#check raw data
print(hurrican4)
print(class(hurrican4))

year4=hurrican4[1:17,2]
number4=hurrican4[1:17,5]
year5=hurrican5[1:10,2] 
number5=hurrican5[1:10,5] 
