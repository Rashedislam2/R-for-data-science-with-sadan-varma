#importing the dataset
mydata = read.csv("bottle_data.csv")
mydata
#checking for the normality

#shapiro_wilk test

shapiro.test(mydata$value)

#one sample t test

 t.test(x= mydata$value,mu=150)
