#install.packages("ggplot2")
library(ggplot2)
data.set = mtcars
data.set
View(data.set)

#generating a basic scatter plot
ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point()

#changing point shape and size

ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=17 )

#adding the regression line


ggplot(data.set,aes(x=wt,y=mpg)) +
  geom_point(size=2,shape=17 ) +
  geom_smooth(method = lm)

