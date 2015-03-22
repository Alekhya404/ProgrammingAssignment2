## Th Below Two functions "makeCacheMatrix" and " cacheSolve" will create a input matrix
## that will cache the inverse values of the matrix.


## This function makeCacheMatrix will do the following
##1.Set the values of matrix
##2.get the values of matrix
##3.set the values of  inverse of the matrix
##4.get the values of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  matrixinv<-NULL
  set<-function(y){##sets matrix
    x<<-y
  matrixinv<-NULL
}
get<-function() x##gets the input matrix
setinv<-function(inv) matrixinv<-inv ##sets the inverse of input matrix
getinv<-function() matrixinv## gets the inverse of the input matrix
list(set=set,get=get,setinv=setinv,getinv=getinv)## creating list of all the created values

}


## This function will check first for the inverse value of the matrix and if there
##is no value it will get the matrix and calculates inverse of the matrix.finally
##the matrix will be setted and cached.

cacheSolve <- function(x, ...) {
  matrixinv <- x$getinv()## it gets the inversed matrix from the object x
  if(!is.null(matrixinv)) { ## checks for the value of inversed matrix
    message("getting cached data")
    return(matrixinv)
  }
  data <- x$get()##if there is no value in the inversed matrix,it will get the matrix from the above object X
  matrixinv <- solve(data, ...)##calculates the inverse
  x$setinv(matrixinv)##sets the calculated inverse matrix
  matrixinv ## Return a matrix that is the inverse of 'x'
}
