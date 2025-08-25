#importing dataset
data.set = read.csv("Perfume_Two_Sample.csv")

sdmachine1 = sd(data.set$Machine.1)
sdmachine2 = sd(data.set$Machine.2)

z.test(x = data.set$Machine.1,
       y =data.set$Machine.2,
       sigma.x = sdmachine1,
       sigma.y = sdmachine2,
       alternative="greater")
