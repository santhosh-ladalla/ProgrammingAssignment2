## Put comments here that give an overall description of what your
## functions do

## Caching Inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## setting the value
  set <- function(y = matrix()) {
    x <<- y
  }
  ## get the value
  get <- function() x 
  
  ## setting the inverse for caching
  setinverse <- function(inverse) m <<- inverse
  ## get the inverse
  getinverse <- function() m
  ## list with functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  ## get cached data
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## caliculate the inverse
  m <- solve(data)
  ## set the value for caching
  x$setinverse(m)
  m
}
