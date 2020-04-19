#Functions that cache the matrix
# The function creates a matrix object that can inverse the cache

makeCacheMatrix <- function(x = matrix()) 
  {
  inv <- NULL
  set <- funtion(y){
    x <<- y
    inv <<- NULL
  }
  get <- function{} x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##CacheSolve computes the inverse matrix returned by CacheMatrix
