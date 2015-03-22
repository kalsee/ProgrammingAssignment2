## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function creates a list
# that contains 4 member functions: set, get, setInv
# and getInv. it uses <<- assignment operator so that
# these internal variables are not exposed to the
# outside environment.
makeCacheMatrix <- function(x = matrix()) {
  matrixInv <- NULL
  
  set <- function(y) {
    x <<- y
    matrixInv <<- NULL 
  }
  
  get <- function() x 
  setInv <- function(inv) matrixInv <<- inv 
  getInv <- function() matrixIinv 
  
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## This function returns a matrix that is inverse of x checks if it is in cache
## returns from cache if present or caclulates 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv() 
  if(!is.null(m)) { 
    message("getting cached data")
    return(m) 
  }
  data <- x$get()
  m <- solve(data) 
  x$setInv(m) 
  m
}
