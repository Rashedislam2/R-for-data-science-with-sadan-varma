#multiple linear regression

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




