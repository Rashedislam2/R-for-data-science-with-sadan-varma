# demonstrarting clt(central limit theorm)

#generating 10000 number of uniform distribution
r = runif(10000)
hist(r)
avg = mean(r)
avg

#draw random sample from r 
sample1 = sample(r,4)
sample2 = sample(r,4)
sample3 = sample(r,4)
sample4 = sample(r,4)

mean(sample1)
mean(sample2)
mean(sample3)
mean(sample4)

#run a for loop 

cl4 = mean(sample(r,4))
cl4

for (i in 1:1000) {
  cl4 = c(cl4,mean(sample(r,4)))
}
hist(cl4)
  
