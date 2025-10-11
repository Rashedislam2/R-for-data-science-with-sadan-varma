#importing the data set
dataset= read.csv("Salary_Data.csv")
dataset
View(dataset)
#Splitting the dataset into the Training set and Test set
#install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary,SplitRatio = 2/3)
split
training_set = subset(dataset,split == TRUE)
training_set
View(training_set)
test_set = subset(dataset,split == FALSE)
View(test_set)
#fitting the simple linear regression model to the training set
regressor = lm(formula =Salary~YearsExperience ,
               data =training_set )