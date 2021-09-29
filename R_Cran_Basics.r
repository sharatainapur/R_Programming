#Assigning values to variables and creating objects.
value <- 15
value

20 -> assign_value
assign_value

"
The function rnorm(1) generates a normal random variate with mean zero
and variance unity 
"

random_normal_set = rnorm(10)
random_normal_set

random_normal_set2=rnorm(5,mean=5, sd=2)
random_normal_set2


#Assigning Values to multiple variables
a=10;b=20;c=30;d=40
ls()

#Listing objects based on pattern 
ls(pat = "a")

"starts with a"
ls(pat = "^a") 

ls.str()
"
> ls.str()
a :  num 10
b :  num 20
c :  num 30
d :  num 40
"

#Need to refer about - data frames, matrices and lists,
# Remove an object from the memory - rm()

ls()
rm(d)
ls()

"Deletes all the objects in the memory"
rm(list=ls()) 
ls()

#Using the help command on R 
?lm
help(lm)
help("lm")

help("*")
#The above command does not work with the question mark.

#Mode and Length Functions
x <- rnorm(2)
x
mode(x)
length(x)

#Checking the current working directory and changing it if we need to read/write something
setwd()
getwd()

mtcars
head(mtcars)

#Different ways of accessing the attributes within the dataset - one creates a numeric mode and the other works as a list.
mtcars$cyl
mtcars["cyl"]
mtcars[,2]


#Generating Data
3:5-3
x<-4:20
x
y<-5:(15-4)
y
z<-8:10-2
z

#Using the seq() function to generate the data
a<-seq(25,75,5)
a

b<-seq(length=25,from=5,to=105)
b

#Directly type the values using c() - vector
temp=c(4,6,4,3,45,345)
temp
mode(temp)