## To caching the inverse of a matrix

## makeCacheMatrix function creates a special "matrix" object 
## that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    
    matrix(set = set, get = get)
}


## cacheSolve function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
    m <- x$get()
    if(!is.null(m)) {
        message("getting cached data")
        return(solve(m))
    }
    data <- x$get()
    m <- solve(data, ...)
    m
}
