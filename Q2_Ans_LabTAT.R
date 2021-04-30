
LabTAT<-read.csv("E:\\Assignment\\3_Hypothesis testing\\LabTAT.csv") 
head(LabTAT)
View(LabTAT)
attach(LabTAT)
summary(LabTAT)

Stacked_Data <- stack(LabTAT)
View(Stacked_Data)
attach(Stacked_Data)

# Normality test

shapiro.test(LabTAT$`Laboratory1`)
shapiro.test(LabTAT$`Laboratory2`)
shapiro.test(LabTAT$`Laboratory3`)
shapiro.test(LabTAT$`Laboratory4`)

# The Brown-Forsythe test foe variance
library(car)
leveneTest(values~ ind, data = Stacked_Data)

Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)

