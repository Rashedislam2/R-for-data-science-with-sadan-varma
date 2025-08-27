#two sample t test
#importing data set
dataset = read.csv("scores.csv")

#checking normality
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

#checking homogeinity of the variance
var.test(x=dataset$Male,y=dataset$Female)

#running the independent sample t test
t.test(x=dataset$Male,y=dataset$Female,var.equal = TRUE)
