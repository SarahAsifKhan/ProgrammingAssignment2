## These cache R functions in this assignment are able to cache potentially time-consuming computations.

## caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- functio(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function creates a special "matrix" object that can cache its inverse


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv < - x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
