## Pair of functions to cache the inverse of a matrix to save computation time

## makeCacheMatrix function creates a special 'matrix' that can cache it's inverse. 
# It contain four functions set() for setting the value of the matrix, 
# get() for retrieving the value of the matrix, setinv() to cache the inverse of the matrix
# and getinv() to retrieve the cached inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y = matrix()){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setinv <- function(z = matirx())  inv <<-  z
  getinv <- function () inv
  
  list(set = set, get = get, setinv = setinv,getinv=getinv)
  
}


## cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above
# If the inverse has already been calculated then the cachesolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)){
          message("Getting Cached data")
          return(inv)
        }
        
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
        
}
