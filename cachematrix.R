## Put comments here that give an overall description of what your
## functions do

# R Programming - Assignment 2
# Author: Kevin Cheung
# Date: 3/16/2015

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	# makeCacheMatrix create a special matrix containing a function to
	# 1. set the value of the matrix
	# 2. get the value of the matrix
	# 3. set the value of the inverse matrix
	# 4. get the value of the inverse matrix

	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(matrix) m <<- matrix
	getmatrix <- function() m
	list(set = set, get = get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'

	m <- x$getmatrix()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...) # compute the inverse of the matrix
	x$setmatrix(m)
	m
}
