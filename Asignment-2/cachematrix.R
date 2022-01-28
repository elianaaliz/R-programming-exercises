## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL # Initialize the inverse matrix
  # Method set
  set <- function(matrix) {
     m <<- matrix
     inv <<- NULL
  }
  # Method get
  get <- function() m
  
  # Method to set inverse 
  setInv <- function(inverse) inv <<- inverse
  
  # Method to get inverse
  getInv <- function() inv
  
  # Return a list of methods
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
  ivx <- x$getInv() #Get the inverse of matrix 'x' in this case = 'ivx'
  
  if(!is.null(ivx)) { #If its exist
    message("getting cached data")
    return(iv) #just return the inverse
  }
  # In other case:
  #Get the inverse matrix from cache
  m <- x$get()
  
  #Calculate the inverse
  ivx <- solve(m) 
  
  ### PLUS ### Looks Good!
  #We check the result is the identity matrix with this
  #ivx <- solve(m) %*% m
  
  x$setInv(ivx) #Set the inverse
  
  ivx #return m
}
