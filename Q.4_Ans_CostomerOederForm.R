
library(readxl)
cof = read.csv("E:\\Assignment\\3_Hypothesis testing\\CostomerOrderForm.csv")

head(cof)
view=(cof)

Stacked_Data <- stack(cof)
View(Stacked_Data)
attach(Stacked_Data)

table(Stacked_Data$ind,Stacked_Data$values)
chisq.test(table(Stacked_Data$ind,Stacked_Data$values))
