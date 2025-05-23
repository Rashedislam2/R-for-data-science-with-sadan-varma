install.packages("psych")
library("psych")

data()
AirPassengers



#using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

#lets look at the first 6 record using head()function
head(nycflights13::flights)

summary(distance)
describe(distance)

demo = cbind(arr_delay,dep_delay,distance)
demo         
describe(demo)
