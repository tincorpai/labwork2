#matrix work
#Create a matrix
y <- matrix(c(1,2,3,4), nrow = 2, ncol=2)

#Mat
z <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)

apply(z, 2, mean)
