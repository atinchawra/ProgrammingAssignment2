## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  outMatrix <- NULL
  
  setInMatrix <- function(im) {
    x <<-im
    outMatrix<<-NULL 
  }
  setOutMatrix <- function(om) outMatrix <<-om
  
  getInMatrix <- function() x
  getOutMatrix <- function() outMatrix
  
  
  list(setInMatrix=setInMatrix,getInMatrix=getInMatrix,
       setOutMatrix=setOutMatrix,getOutMatrix=getOutMatrix)
}


## This function returns the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  outMatrix <- x$getOutMatrix()
  
  if(!is.null(outMatrix)) {
    message("got it in the cache")
    return(outMatrix)
  }
  
  outMatrix <- solve(x$getInMatrix())
  x$setOutMatrix(outMatrix)
  outMatrix

}  
}
