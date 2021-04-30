falt = read.csv("E:\\Assignment\\3_Hypothesis testing\\Faltoons.csv")
head(falt)
table(falt$Weekdays,falt$Weekend)

tab=table(falt$Weekdays,falt$Weekend)

prop.test(tab, correct = FALSE)



