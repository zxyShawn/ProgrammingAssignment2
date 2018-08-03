## Put comments here that give an overall description of what your
## functions do

## take the value of x, store it.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    setmatrix <- function(input){
        x <<- input
        inverse <<- NULL
    } 
    matrix <- function() x
    inverse <- function() inverse
    setinverse <- function(input) inverse <<- input
    list(setmatrix = setmatrix, setinverse = setinverse, matrix = matrix, inverse = inverse)
}


## check if there is a inverse stored, if not, compute it and store it in x.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$inverse()
    if(!is.null(m)) {
        message("getting inverse")
        return(m)
    }
    matrix <- x$matrix()
    inverse <- solve(matrix)
    x$setinverse(inverse)
    inverse
}
