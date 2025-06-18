#importing the data set
dataset = read.csv("data.csv")
#importing library
library(ggplot2)
#creating the basic histogram
ggplot(dataset,aes(x=weight))+
  geom_histogram(color="white")

#Changing histogram plot line colors by groups
ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",alpha=0.5,position = "identity")

#we can change the position adjustment to use for overlapping
#points on layer possible values  for the argument position
#are "identity","stack","dodge".Default value is "stack"

#interval histogram 

ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",alpha=0.5,position = "dodge")+
  theme(legend.position = "top")

#The plyr package is used to calculate the mean weight of each group
#install.packages("plyr")
library(plyr)
group_means=ddply(dataset,"sex",summarise,grp.mean=mean(weight))
group_means

















