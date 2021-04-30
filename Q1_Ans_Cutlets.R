##### Normality Test##################
library(readxl)

######## Cutlets.csv data ###################

Cutlets<-read.csv("E:\\Assignment\\3_Hypothesis testing\\Cutlets.csv")    
attach(Cutlets)
colnames(Cutlets)<-c("UnitA","UnitB")
# Changing column names
View(Cutlets)
attach(Cutlets)

#############Normality test###############

shapiro.test(UnitA)
# p-value = 0.32 >0.05 so p high null fly => It follows normal distribution

shapiro.test(UnitB)
# p-value = 0.5225 >0.05 so p high null fly => It follows normal distribution

#############Variance test###############

var.test(UnitA,UnitB)#variance test
# p-value = 0.3136 > 0.05 so p high null fly => Equal variances

############2 sample T Test ##################

t.test(UnitA,UnitB,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test

# p-value = 0.4723 > 0.05 accept null Hypothesis 

?t.test
t.test(UnitA,UnitB,alternative = "greater",var.equal = T)

# p-value = 0.2361 > 0.05 => p high Ho fly => accept null hypothesis
