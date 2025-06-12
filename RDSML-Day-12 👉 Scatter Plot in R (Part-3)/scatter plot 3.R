library(ggplot2)
dataset=mtcars
View(dataset)

#converting cyl col from numeric to factor variable
dataset$cyl=as.factor(dataset$cyl)
#adding regression line based on multiple groups
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl))+
  geom_point()
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl))+
  geom_point()+
  geom_smooth(method = lm)
#removing confidence interval
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,se=FALSE)

#Extanding the reegression line
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,se=FALSE,fullrange=TRUE)

#Filling the color of confidence bands
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,aes(fill = cyl))

#changing point shapes manually
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,se=FALSE,fullrange=TRUE) +
  scale_shape_manual(values = c(7,10,12)) +
  theme(legend.position = "top")
#changing point color manually
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,se=FALSE,fullrange=TRUE) +
  scale_shape_manual(values = c(7,10,12)) +
  scale_color_manual(values=c("blue","yellow","purple"))+
  theme(legend.position = "top")
#customizing scatter plot
ggplot(dataset,aes(x=wt,y=mpg,shape=cyl,color=cyl)) +
  geom_point()+
  geom_smooth(method = lm,se=FALSE,fullrange=TRUE) +
  scale_shape_manual(values = c(7,10,12)) +
  scale_color_manual(values=c("blue","yellow","purple"))+
  labs(title="miles per gallon \n according to weight",x="weight",y="miles per gallon")
  theme(legend.position = "top")
                     