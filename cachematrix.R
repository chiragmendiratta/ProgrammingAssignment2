## Put comments here that give an overall description of what your
## functions do

## makes a cache and stores inverse it

makeCacheMatrix <- function(x = matrix()) {
  makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    set <- function(y){
      x <<- y
      j <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) j <<- inverse
    getInverse <- function() j 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
  }
}


## chechs cache for pre-existent inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j     
}
