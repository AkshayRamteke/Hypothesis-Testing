
byr = read.csv("E:\\Assignment\\3_Hypothesis testing\\BuyerRatio.csv")
head(byr)
view=(byr)

Stacked_Data <- stack(byr)
View(Stacked_Data)
attach(Stacked_Data)

table(Stacked_Data$ind,Stacked_Data$values)
chisq.test(table(Stacked_Data$ind,Stacked_Data$values))
