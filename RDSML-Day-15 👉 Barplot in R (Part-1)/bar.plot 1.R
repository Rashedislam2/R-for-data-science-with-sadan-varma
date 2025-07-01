dataset = data.frame(dose=c("D0.5","D1","D2"),
                     len= c(1,8,29.5))

#basic barplot
library(ggplot2)

ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity")

#horizontal barplot
ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity") +
  coord_flip()
#changing the width of the bar

ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity",width =0.5)


#changing the color of the bar
ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity",width =0.5,color="blue",fill="lightgreen")

#minimal theme with blue fill color
ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity",width =0.5,color="yellow",fill="steelblue") +
  theme_minimal()
#barplot with labels


#outside of the bar
ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity",width =0.5,fill="steelblue") +
  geom_text(aes(label=len),vjust=-0.6, size = 3, color="black") +
  theme_minimal()
#inside the bar
ggplot(dataset,aes(x=dose,y=len)) +
  geom_bar(stat="identity",width =0.5,fill="steelblue") +
  geom_text(aes(label=len),vjust=2, size = 3, color="yellow") +
  theme_minimal()

#barplots of counts

mycars=mtcars
ggplot(mycars,aes(x=factor(cyl)))+
  geom_bar(stat = "count",width = 0.5,fill="steelblue")+
  theme_minimal()







