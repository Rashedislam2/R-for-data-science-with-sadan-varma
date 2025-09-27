# One-way ANOVA
# Importing the dataset
PlantGrowth <- PlantGrowth

# importing the dplyr library
# install.packages("dplyr")
library(dplyr)
# Computing the group means, sd, and se
stats <- PlantGrowth %>%
  group_by(group) %>%
  summarise(
    mean = mean(weight),
    sd = sd(weight), 
    se = sd(weight) / sqrt(n())
  )

print(stats)

# Creating group wise box plots
boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
)

# Visualizing the data using mean plots
# install.packages("ggpubr")
library(ggpubr)
ggline(PlantGrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter")
)

# Running the One-way ANOVA test
anova <- aov(weight ~ group, data = PlantGrowth)
summary(anova)

#Tukey multiple pairwise-comparisons
TukeyHSD(anova)

#estimating homoginity of the variance
plot(anova,1)
library(car)
leveneTest(weight ~ group, data = PlantGrowth)

#Running Anova test with no assumption of equal variance
oneway.test(weight ~ group, data = PlantGrowth)

#pair-wise t test with no assumption of equal variance
pairwise.t.test(PlantGrowth$weight,
                PlantGrowth$group,
                p.adjust.method = "BH",pool.sd=FALSE)

#checking for normal distribution
plot(anova,2)

#Extracting residual
aov.res = residuals(object=anova)
aov.res
shapiro.test(aov.res)
#kruskal wallis test
kruskal.test(weight~group,data= PlantGrowth)
