#Functions that cache the matrix
# The function creates a matrix object that can inverse the cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- funtion(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##CacheSolve computes the inverse matrix returned by CacheMatrix

cacheSolve <- function(x, ...){
  ##Return a matrix that is inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
