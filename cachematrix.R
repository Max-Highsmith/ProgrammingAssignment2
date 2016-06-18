## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL   #cache for matrix inverse

set <- function(y){
  x <<- y
  m <<- NULL
}

get <- function() x
setInverse <- function(matInv) m <<- matInv
getInverse <- function() m
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){  # if the cache has value stored
      message("getting cached data")
      return(m)
    }
    #not cached
    data <- x$get()
    m <- solve(data,...) #compute inverse
    x$setInverse(m)
    m
  }
