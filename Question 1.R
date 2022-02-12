#Anova, here we have 3 groups (1,2,3)
data= amess
data$treatmnt <- as.factor(data$treatmnt)
res.aov <- aov(folate ~ treatmnt, data = data)
summary(res.aov)
#result: all the treatments are basically equal with aov
# now we are going to make the anova using the lm() function 
anoL<-lm(folate~treatmnt,data=data)
summary(anoL)
aov(anoL)
