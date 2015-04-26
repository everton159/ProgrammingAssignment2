## Put comments here that give an overall description of what your
## functions do

## everton159 - São Paulo- Brazil
## be free to add br.linkedin.com/in/evertoon
##This program is a homework of coursera
##The first function create a objetct cache

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 # inv will store the cached inverse matrix
    inv_x <- NULL
    set <- function(y) {
        x <<- y
        inv_x <<- NULL
    }
    get <- function() x
    setinverse<- function(inverse) inv_x <<-inverse
    getinverse <- function() inv_x

##Return de matrix
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## This function solve a Cacheobject and return the inverse matrix of X

cacheSolve <- function(x, ...) {
    inv <- x$getinv()

    # Check the inverse
    if (!is.null(inv)) {
        return(inv)
    }

    data <- x$get()
    inv <- solve(data, ...)

   x$setinv(inv)
    inv
}