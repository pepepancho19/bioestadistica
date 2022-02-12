
data = pregunta_206_20_20_20Hoja_201
head(data) # to see data
str(data) #to verify variables 
#here we change some values to factors such as Sex, Class (because of number) and Age
data$Sex <- as.factor(data$Sex)
data$Class <- as.factor(data$Class)
data$Age <- as.factor(data$Age)
## This for clarify whether 0 = dead and 1= alive  
data$Survived <- ifelse(test=data$Survived == 0, yes="Dead", no="Alive")
#Then we convert those values into factors 
data$Survived <- as.factor(data$Survived) # Now convert to a factor
str(data) ## this shows that the correct columns are factors
#This code is to know whether is dead respecting to class (to answer B) and sex and class (to answer C) 
xtabs(~ Survived + Sex+Class, data=data)
xtabs(~ Survived + Class, data=data)

logistic <- glm(Survived ~ Class, data=data, family="binomial")
summary(logistic)

logistic <- glm(Survived ~ Sex*Class , data=data, family="binomial")
summary(logistic)

