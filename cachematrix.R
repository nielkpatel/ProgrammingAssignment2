## makeCacheMatrix creates a list of 
##1. Set value of Matrix
##2. Get Value of Matrix
##3. Set Value of inverse
##4. Get value of inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <-function(y){
  x<<-y
  i<<-NULL
}
get <- function() x
setinverse <-function(solve) i <<- solve 
getinverse <- function() i
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Creates the inverse of the matrix created with the above function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i <-x$getinverse()
if(!is.null(i)){
  message("getting cached data")
  return(i)
}
data <- x$get()
i <-solve(data,...)
x$setinverse(i)
i

  }
