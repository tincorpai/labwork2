### Lab1: Matrix
### Author: Taiwo Famuyiwa       
### Date: August. 4, 2019

###########################
###########################
#Matrix#
#QUESTION1
#A)
M <- matrix(c(1:10),nrow=5,ncol=2, dimnames=list(c("a","b","c","d","e"),c("A","B")))

#Answer:
#  A B
#a 1 6
#b 2 7
#c 3 8
#d 4 9
#e 5 10

#B)Function to get the maximum of all column
apply(M, 2, function(x) max(x, na.rm = TRUE))

#QUESTION2
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(7, 8, 9)

u<-matrix(c(x, y, z), nrow = 3, ncol=3, dimnames = list(c("a", "b", "c")))

