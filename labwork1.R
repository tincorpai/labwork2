### Lab1:   Vector and List 
### Author: Taiwo Famuyiwa       
### Date: Feb. 4, 2019

#######################################
#######################################
#VECTOR QUESTIONS#
#QUESTION1
a <- c(1,5,4,3,6)
b <- c(3,5,2,1,9)
#The values are: TRUE  TRUE FALSE FALSE  TRUE
a <= b


#QUESTION2
x <- c(12:4)
y <- c(0,1,2,0,1,2,0,1,2)
#This code will give an index of x/y value that are finite
#The values are: 1, 4, 7
which(!is.finite(x/y)) 


#QUESTION3
x <- c(1,2,3,4)
#This code finds all non empty x elements wise and compare each
#to zero. If both conditions are true, two is added elemnt wise.
#k = 3, 4, 5, 6
(x+2)[(!is.na(x)) & x > 0] -> k



#QUESTION4
x <- c(2, 4, 6, 8)
y <- c(TRUE, TRUE, FALSE, TRUE)
#Sum all x element according to wheter y is true or false
sum(x[y])


#QUESTION5
x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
#is.na finds all na's in x and sum counts the number of na's
#The code will return 3
sum(is.na(x)) 



###########################################
###########################################
#LIST QUESTIONS#
#import library
library(dplyr)
#QUESTION 1
p <- c(2,7,8)
q <- c("A", "B", "C")
x <- list(p, q)
#Extract the vector q in x
#The answer is: "A", "B", "C
x[2] 



#QUESTION 2
w <- c(2, 7, 8)
v <- c("A", "B", "C")
x <- list(w, v)
#Change the first element of vector w to k in x
#Answer:"K" "B" "C"
x[[2]][1] <- "K"


#QUESTION 3
a <- list ("x"=5, "y"=10, "z"=15)
#Unlist the list and sum element wise
#The output is 30
sum(unlist(a))



#QUESTION 4
Newlist <- list(a=1:10, b="Good morning", c="Hi")
#Create a function and use sapply to add 1 vector a element wise
b <- sapply(Newlist[[1]], function(x)x+1)
Newlist[[1]] <- b


#QUESTION5
b <- list(a=1:10, c="Hello", d="AA")
#remove the second element from vector a of b
b[[1]][-2]


#QUESTION6
x <- list(a=5:10, c="Hello", d="AA")
#Add new element "NewItem" and name it z
x$z <- "NewItem"


#QUESTION7
y <- list("a", "b", "c")
#name each element list y using name function
names(y) <- c("one", "two", "three")


#QUESTION8
x <- list(y=1:10, t="Hello", f="TT", r=5:20)
#Get the length of 4th element of x
#Answer: 16
length(x[[4]])


#QUESTION9
string <- "Grand Opening"
#A code that split string into a list of objects
#I applied a regular expression "\\s+"
as.list(strsplit(string, '\\s+')[[1]])


#QUESTION10
y <- list("a", "b", "c")
q <- list("A", "B", "C", "a", "b", "c")
#Use setdiff functon return values list of q not in y
setdiff(q, y)
