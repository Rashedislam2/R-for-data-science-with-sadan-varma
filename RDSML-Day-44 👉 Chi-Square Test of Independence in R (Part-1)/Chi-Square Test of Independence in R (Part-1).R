#importing the data set
housetasks = read.delim("housetasks.txt",row.names = 1)
print(housetasks)
View(housetasks)

#contingency table can be visualized by this function
#ballontplot().this function draws graphical matrix where
#each cell contain a dot whose size reflect the relative magnitude
# of the corresponding component.

# install.packages("gplots")
library(gplots)
dt = as.table(as.matrix(housetasks))
dt
balloonplot(t(dt),main= "Housetasks visualization",
            show.margins = F,
            xlab = "",ylab = "")

#It's is possible to visualize a contingency table 
#as a mosaic.plot.This can be done using the function
#mosaicplot() from the built-in R package graphics.

library("graphics")
mosaicplot(dt,shade = T,las = 2,
           main = "housetasks")
#blue color indicates that the observed value is higher
#than the expected value.Red color indicates that the observed
#is lower than the expected value

#computing chi squre test in R
chisq = chisq.test(housetasks)
chisq
#degrees of freedom=(row-1)(col-1)
chisq$observed
chisq$expected
round(chisq$expected,2)
