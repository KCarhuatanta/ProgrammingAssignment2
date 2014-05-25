

## makeCacheMatrix creates a matrix, caches it and also creates its inverse matrix and caches that.

makeCacheMatrix <- function(x = matrix ()){
  i<- NULL
  set <- function (y) {
    x <<- y
    i <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) i <<- inverse
  getinverse <- function ()i
}


## cacheSolve returns the inverse of a function.  It first looks to see if the inverse is 
## already cached so it can retrieve it if not it created the inverse matrix.

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(lis.null(i)){## this line is confusing to me, I could not find what lis.null does/refers to, please comment to me.
      message("getting cached data")
      return
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
  }
  