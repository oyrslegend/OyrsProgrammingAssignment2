##SHA1 
##8012dea5d9712eb54b6559b6dbbab15ebc76e44b

makeCacheMatrix <- function(x = matrix()) {
     z <- NULL
     set <- function(y) {
         x <<- y
         z <<- NULL ## function when its going to inverse
     }
     get <- function() x
     setInverse <- function(inverse) z <<- inverse
     getInverse <- function() z
     list(set = set,
          get = get,
          setInverse = setInverse, ##setup the inverse
          getInverse = getInverse) 
 }

> cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     z <- x$getInverse()
     if (!is.null(z)) {
         message(" Inversed data") ##Condition when the matrix already get inversed
         return(z)
     }
     matrix <- x$get() ##matrix print
     z <- solve(mat, ...)
     x$setInverse(z)
    z
 }
