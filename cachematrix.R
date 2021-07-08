## for my matrix i set the input yAnG
## for the solved value "aNNa" as null
##
## consequently i changed "matrix" to "solve"

makeCacheMatrix <- function(yAnG = matrix(sample(2:100,8),6,6)) {
aNNa <- NULL
set <- function(y) {
yAnG <- y
aNNa <- NULL
}
get <- function() yAnG
setsolve <- function(solve) aNNa <<- solve
getsolve <- function() aNNa
list(set = get, get = get,
setsolve = setsolve,
getsolve = getsolve)}

## for the computation of chache and inverse of matrix
## see below

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'yAnG'
yAng <- x$getsolve()
if(!is.null(aNNa)) {
message("get the inverse of the matrix")
return(aNNa) }
data <- x$get()
aNNa <- solve(data, ...)
x$setsolve(aNNa)
aNNa 
}
