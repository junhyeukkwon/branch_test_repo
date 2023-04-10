myvar1 <- matrix(1:10, nrow=5, ncol=2)
myvar1
mytranspose(myvar1)
myvar1[1,1] == mytranspose(myvar1)[1,1] #TRUE
myvar1[1,2] == mytranspose(myvar1)[2,1] #TRUE
myvar1[2,1] == mytranspose(myvar1)[1,2] #TRUE
myvar1[2,2] == mytranspose(myvar1)[2,2] #TRUE
myvar1[3,1] == mytranspose(myvar1)[1,3] #TRUE
myvar1[3,2] == mytranspose(myvar1)[2,3] #TRUE
myvar1[4,1] == mytranspose(myvar1)[1,4] #TRUE
myvar1[4,2] == mytranspose(myvar1)[2,4] #TRUE
myvar1[5,1] == mytranspose(myvar1)[1,5] #TRUE
myvar1[5,2] == mytranspose(myvar1)[2,5] #TRUE
all.equal.raw((myvar1), mytranspose(mytranspose(myvar1))) #TRUE

myvar2 <- matrix(NA, nrow=0, ncol=0)
myvar2
mytranspose(myvar2)
all.equal.raw((myvar2), mytranspose(mytranspose(myvar2)), check.attributes = FALSE) #TRUE

myvar3 <- matrix(c(1,2), nrow=1, ncol=2)
myvar3
mytranspose(myvar3)
myvar3[1] == mytranspose(myvar3)[1] #TRUE
myvar3[2] == mytranspose(myvar3)[2] #TRUE
all.equal.raw((myvar3), mytranspose(mytranspose(myvar3))) #TRUE

myvar4 <- matrix(c(1,2), nrow=2, ncol=1)
myvar4
mytranspose(myvar4)
myvar4[1] == mytranspose(myvar4)[1] #TRUE
myvar4[2] == mytranspose(myvar4)[2] #TRUE
all.equal.raw((myvar4), mytranspose(mytranspose(myvar4))) #TRUE

myvar5 <- c(1,2,NA,3)
myvar5
mytranspose(myvar5)
myvar5[1] == mytranspose(myvar5)[1] #TRUE
myvar5[2] == mytranspose(myvar5)[2] #TRUE
myvar5[3] == mytranspose(myvar5)[3] #NA
myvar5[4] == mytranspose(myvar5)[4] #TRUE
all.equal.raw(as.numeric(myvar5), as.numeric(mytranspose(mytranspose(myvar5)))) #TRUE