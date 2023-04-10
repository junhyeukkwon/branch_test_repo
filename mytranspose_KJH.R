mytranspose <- function(x) {
  if(is.null(x)==TRUE){
    return(x)
    }
  else {
    x <- as.matrix(x)
    if(nrow(x)==0 & ncol(x)==0) {
      return(x)
    }
    else {
      y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
        for(i in 1:nrow(x)) {
          for(j in 1:ncol(x)) {
            y[j,i] <- x[i,j]
          }
      }
      return(y)
    }
  }
}