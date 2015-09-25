## Put comments here that give an overall description of what your
## functions do

## Objetive of this function is find the inverse of a Matrix using Solve function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## This function will return the inverse of the function from Cache. If there is no data in cachec, it will calculate the inverse of the function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

 	  inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
	  inv <- solve(data, ...)
        x$setinverse(inv)
        inv

}
