#importing the dataset

dataset = read.csv("50_Startups.csv")
View(dataset)
#encoding catagorical data

dataset$State<-factor(dataset$State,
                      levels =c('New York','California','Florida'),
                      labels =c(1,2,3))
dataset$State
#spilliting the dataset into the training set and test set

library(caTools)
set.seed(123)
split = sample.split(dataset$Profit,SplitRatio = 0.8)
training_set = subset(dataset,split=="TRUE")
test_set = subset(dataset,split=="FALSE")
View(training_set)
View(test_set)
#fitting the multiple linear regression model to training set

regressor = lm(formula =Profit~R.D.Spend+Administration+Marketing.Spend+State,
               data = training_set)
summary(regressor)
#predicng the test set results
y_pred = predict(regressor,test_set)
y_pred
#stepwise backward elimation
regressor = lm(formula =Profit~R.D.Spend+Administration+Marketing.Spend,
               data = training_set)
summary(regressor)


regressor = lm(formula =Profit~R.D.Spend+Marketing.Spend,
               data = training_set)
summary(regressor)

y_pred = predict(regressor,test_set)
y_pred

#automated stepwise backward elimination
full_model = lm(Profit~.,data = training_set)
summary(full_model)
final_model = step(full_model,direction = "backward")
summary(final_model)

#testing assuptions

cor(training_set$R.D.Spend,training_set$Profit,method = 'pearson')
cor.test(training_set$R.D.Spend,training_set$Profit,method = 'pearson')

cor.test(training_set$Marketing.Spend,training_set$Profit,method = 'pearson')

plot(training_set$R.D.Spend,training_set$Profit,method = 'pearson')

plot(final_model)

#checking independent of residual
install.packages("lmtest")
library(lmtest)
dwtest(final_model)

#normality of residuals
shapiro.test(rstandard(final_model))
qqnorm(rstandard(final_model))
qqline(rstandard(final_model))

#checking multicolinearity
install.packages("car")
library(car)
vif(final_model)
#testing homoscedasticity
plot(final_model$fitted.values,rstandard(final_model))
abline(h=0,col="red")
bptest(final_model)
 