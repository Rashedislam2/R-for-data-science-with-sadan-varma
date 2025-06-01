#install.packages("psych")
library("psych")

data()
AirPassengers



#using the New York airport flight data
#install.packages("nycflights13")
attach(nycflights13::flights)

#lets look at the first 6 record using head()function
head(nycflights13::flights)
distance

summary(distance)
describe(distance)

demo = cbind(arr_delay,dep_delay,distance)
demo         
describe(demo)

#introducing col() names function
colnames(demo)=c('arrival delay','departure delay','distance')
demo
describe(demo)

#introducing hist() function
dep_delay
hist(dep_delay)

#how to group descriptive statistics
head(nycflights13::flights)
carrier
summary(carrier)
