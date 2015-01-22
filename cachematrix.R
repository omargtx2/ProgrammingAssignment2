## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this is my first program in this exercise

makeCacheMatrix <- function(x = matrix()) {
  solvem <- NULL
  set <- function(y) {
    x <<- y
    solvem <<- NULL
  }
  get <- function() x
  setsolvem <- function(solve) solvem <<- solve
  getsolvem <- function() solvem
  list(set = set, get = get,
       setsolvem = setsolvem,
       getsolvem = getsolvem)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolvem()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolvem(m)
  m
}
