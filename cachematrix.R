## makeCacheMatrix creates a list of 
##1. Set value of Matrix
##2. Get Value of Matrix
##3. Set Value of inverse
##4. Get value of inverse

## i is used for inverse, solve function is used to compute the inverse of a matrix

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


## cacheSolve Creates the inverse of the matrix created with the above function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i <-x$getinverse()

if(!is.null(i)){                                                  ##If the inverse has already been calculated
  message("getting cached data")
  return(i)
}


data <- x$get()                                            ##if the inverse has not been calculated, it calculates and stores
i <-solve(data,...)
x$setinverse(i)
i

  }
