library(ggplot2)
data.set=mtcars
View(data.set)
ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=16) +
  geom_smooth(method = lm)

#removing the confidence interval 
ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=16)+
  geom_smooth(method = lm,se= FALSE)

#LOESS method
ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point()+
  geom_smooth()

#change the line and color
ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=16) +
  geom_smooth(method = lm,linetype="dashed",color="green")

#changing the confidence interval color

ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=16,color="orange") +
  geom_smooth(method = lm,linetype="dashed",color="green",fill="blue")
 
#scatter plots with multiple groups

#changing the point shapes by the level of cyl
#converting the cyl column from a numeric to factor

data.set$cyl = as.factor(data.set$cyl)
class(data.set$cyl)
#changing the point shapes by levels of cyl
ggplot(data.set,aes(x=wt,y=mpg,shape=cyl))+
  geom_point()

#changing point shapes and colors
ggplot(data.set,aes(x=wt,y=mpg,shape=cyl,color=cyl))+
  geom_point()
#changing color ,size and shapes
ggplot(data.set,aes(x=wt,y=mpg,shape=cyl,color=cyl,size=2))+
  geom_point()
