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