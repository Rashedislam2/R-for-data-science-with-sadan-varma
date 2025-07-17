 #loading the dataset
mydata = ToothGrowth
mydata

#converting the variable dose from a numeric to a factor variable
mydata$dose = as.factor(mydata$dose)
class (mydata$dose)

library(ggplot2)

#basic box plot
ggplot(mydata,aes(x = dose,y=len)) +
  geom_boxplot()

#we can observe the outliers from the dataset by box plot

#Rotating the box plot


ggplot(mydata,aes(x = dose,y=len)) +
  geom_boxplot()+
  coord_flip()

#Notched box plot
ggplot(mydata,aes(x = dose,y=len)) +
  geom_boxplot(notch = T)

#Changing outlier, color, shape, and size

ggplot(mydata,aes(x = dose,y=len)) +
  geom_boxplot(outlier.color = "red",outlier.shape = 10,outlier.size = 3)

 
#Choosing which items to display

ggplot(mydata,aes(x = dose,y=len)) +
  geom_boxplot(outlier.color = "red",outlier.shape = 10,outlier.size = 3) +
  scale_x_discrete(limits=c("0.5","2"))

#Changing box plot line colors by groups

ggplot(mydata,aes(x = dose,y=len,color = dose)) +
  geom_boxplot()

#Changing the order of items in the legend
 
ggplot(mydata,aes(x = dose,y=len,color=dose)) +
  geom_boxplot()+
  scale_x_discrete(limit=c("2","1","0.5"))

#Box plot with multiple groups

ggplot(mydata,aes(x = dose,y=len,fill = supp)) +
  geom_boxplot() 

#Changing the box position

ggplot(mydata,aes(x = dose,y=len,fill = supp)) +
  geom_boxplot(position = position_dodge(1)) 







