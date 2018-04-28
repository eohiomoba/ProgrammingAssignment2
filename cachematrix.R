## Put comments here that give an overall description of what your
## functions do



## Function gets value  of matrix and then finds the inverse
makeCacheMatrix <- function(x = matrix()) {
  invcalc <- NULL
  set <- function(y) {
    x <<- y
    invcalc <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) invcalc <<- inverse
  getInverse <- function() invcalc
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Function calculates the inverse of the matrix returned by the makecachematrix function

cacheSolve <- function(x, ...) {
  invcalc <- x$getInverse()
  if(!is.null(invcalc)){
    message("Cached data is calculating")
    return(invcalc)
  }
  data <- x$get()
  invcalc <- solve(data)
  x$setInverse(invcalc)
  invcalc          
  ## Return the matrix that is the inverse of x'
}
