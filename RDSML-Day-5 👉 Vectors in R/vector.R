 #vector in R
#Vectors, Factors, Lists, Matrices, and Data Frames in R(data structure)
#creating a vector using the c()command
student_height = c (60,69,55,62)
student_height

#checking the class of vector student height
is.numeric(student_height)
is.logical(student_height)

#R automatically converts numeric to text
#when you have a text item in VECTOR

b= c(5,8,2,"sav")
b
is.numeric(b)
is.character(b)


#we can convert data types
#for example from numeric to character
a= c(1,2,3,4,5)
class(a)
is.numeric(a)
a= as.character(a)
class(a)

#logical operator true and false when converted
#to numeric,TRue converts to 1
#and FALSE converts to 0

d= c(TRUE,FALSE,FALSE,TRUE,FALSE)
d= as.numeric(d)
d

# converting to logical(! or any number other than 0)
#convert to True,0 converts to FALSE)

d
class(d)
d= as.logical(d)
d


e= c(2,0,1,0,-1,23,0)
e= as.logical(e)
e

#creating sequential vector
#creating a vector starting from 1 to 10

my_seq= c(1:100)
my_seq

#if break sequence
my.seq=c(1:50,80,99,88,60,77,44,25,61,92,45)
my.seq


#creating sequential vector using seq()f function

new_seq= c(seq(1,100))
new_seq

#sequence in steps 3
new.seq=c(seq(1,10,by=3))
new.seq

#vectors can have character

names= c("Elias","Mahfuza","Asraf","chaitali")
names
class(names)
names[2]
names[1:3]


#assigning names to vector values

my_value = c(4,7,9,11,20)
names(my_value)=c ("a","b","c","d","e")
my_value
b
