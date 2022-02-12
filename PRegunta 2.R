#Boxplot
gender=Pregunta2$gender
Age=Pregunta2$Age
Height=Pregunta2$Height
Diet=Pregunta2$Diet
lossweight<-(Pregunta2$pre.weight-Pregunta2$weight6weeks)
dat<-data.frame(gender,Age,Height,Diet,lossweight)
dat$gender=as.factor(dat$gender)
dat$Diet=as.factor(dat$Diet)
boxplot(lossweight~Diet, xlab="Diet type", ylab="Weight loss")
#one way anova
mod<-aov(dat$lossweight~dat$Diet)
summary(mod)
mod1<-lm(lossweight~Diet, data=dat)
summary(mod1)
aov(mod1)
mean(x)
mean(x2)
mean(x3)
x<-c(dat$lossweight[1:14] , dat$lossweight[44:53])
x2<-c(dat$lossweight[15:28] , dat$lossweight[54:64])
x3<-c(dat$lossweight[29:43] , dat$lossweight[66:73])
#two way anova
res.aov <- aov(lossweight ~ Diet + Age, data =dat)
summary(res.aov)
res.aov1 <- aov(lossweight ~ Diet*Age, data =dat)
summary(res.aov1)
res.aov2 <- lm(lossweight ~ Diet + Age, data =dat)
summary(res.aov2)
res.aov3 <- lm(lossweight ~ Diet*Age, data =dat)
summary(res.aov3)
aov(res.aov2)
aov(res.aov3)