

## This is the matrixe function

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(z) {
    x <<- z
    mat <<- NULL
  }
  get <- function() x
  setmat <- function(inverse) mat <<- inverse
  getmat <- function() mat
  list(set = set, get = get, setmat = setmat, getmat = getmat)
}


## this is to get the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return matrix that is the inverse of 'x'
  mat <- x$getmat()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- mean(data, ...)
  x$setmat(mat)
  mat
}
