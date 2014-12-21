## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function is a list containing a function to
##set the value of the matrix; 
##get the value of the matric;
##set the value of the inverse of the matrix
##get the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  s<-NULL
  set<-function(y){
    x<<-y
    s<<-NULL
  }
get<-function()x
setsolve<-function(solve)s<<-solve
getsolve<-function()s
list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


## Write a short comment describing this function
##this function checks to see of the inverse of the matrix has already been calculated
## if already calculated, it gets the result from the cache
##if not calculated, it does the calculation
cacheSolve <- function(x, ...) {
       s<-x$getsolve()
       if(!is.null(s)){
         message("getting cached data") 
         return(s)
       }
       data<-x$get()
       s<-solve(data,...)
       x$setsolve(s)
    
        ## Return a matrix that is the inverse of 'x'
}
