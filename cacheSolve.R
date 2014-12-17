#cacheSolve is to calculate the inverse of the special "Matrix"
#created by makeCacheMatrix. It first checks to see if the 
#inverse has been calcuated. It only calculates the inverse
#if the cache is not an inverse.

cacheSolve <-function(x, ...) {
  I<-x$getinverse()                   #try to get inverse from Cache. 
  if(!is.null(I)) {                   #if there is cache, return I 
    message("getting cached data")
    return (I)
  }
  data<-x$get()                       #otherwise, get data and solve
  I<-solve(data, ...)
  x$setinverse(I)                     #store I into cache
  I
}
