## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
