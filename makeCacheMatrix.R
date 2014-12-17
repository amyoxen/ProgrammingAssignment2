
#makeCahseMatrix is a list of functions to set/get a matrix, also, set/get the
#Inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {  
    I<-NULL                    #set the inverse of a matrix equal to NULL
    set<- function(y) {        #"set" function
      x<<-y                    #In a different environment, assign y to x.
      I<<-NULL                 #assign no inverse.
    }
    
    get<- function() x         #"get" function
    setinverse <- function(solve) I<<- solve            #"set Inverse" function
    getinverse <- function() I                          #"get Inverse" function
    list(set =set, get=get, 
         setinverse=setinverse,
         getinverse=getinverse)
}
