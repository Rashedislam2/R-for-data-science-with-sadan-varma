#one_way_anova
#impoting_the_dataset
PlantGrowth = PlantGrowth

# importing the package dplyr
install.packages("dplyr")
library(dplyr)

#computing the group means,sd and se
stats = PlantGrowth %>%  
group_by(group) %>%  
summarise(
  mean = mean(weight),
  sd = sd(weight),
  se = sd(weight)/ sqrt(n()) 
  )  
stats
# creating group wise box plot  
boxplot(weight ~ group,
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightblue"
     )
install.packages("ggpubr")
library(ggpubr)
ggline(PlantGrowth,
       x="group",
       y="weight",
       add=c(mean_se,"jitter")
       )
#Running the one way Anova test
anova = aov(weight~group, data = PlantGrowth)
summary(anova)
