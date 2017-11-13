## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  
  # for storage of the matrix
  setMatrix <- function(Value) {
    x <- Value
    # since a new value is assigned, the cahe is set
    cache <- NULL
  }
  # The matrix is obtained
  getMatrix <- function() {
    x
  }
  
  # cache the given argument 
  cache <- function(solve) {
    cache <- solve
  }
  
  # cache value
  getInverse <- function() {
    cache
  }
  
  # the elements of the list are a function
  list(setMatrix = setMatrix, 
       getMatrix = getMatrix, 
       cache = cache, 
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
  #inverse matrix of x
  # get the cached value
  inversematrix <- y$getInverse()
  # a value is returned if it is in cache
  if(!is.null(inversematrix)) {
    message("getting cached data")
    return(inversematrix)
  }
  # the matrix is obtained and the inverse is calculated to save it in the cache
  datamatrix <- y$getMatrix()
  inversematrix <- solve(datamatrix)
  y$cache(inversematrix)
  
  # get the inverse matrix
  inversematrix
}
