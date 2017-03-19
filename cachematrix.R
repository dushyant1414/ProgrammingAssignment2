## Make cache: list of functions to set, get value of matrix and set, get value of inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <-function() x
  setinv <- function(solve) m<<- solve
  getinv <- function() m
  list (set=set, get=get, setinv=setinv, getinv=getinv)
  
}

## Solve: check for inverse in cache; else calculate inverse

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinv(m)
  mS
}
