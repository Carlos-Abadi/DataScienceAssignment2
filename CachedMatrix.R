## Cache the Inverse of a Matrix

## Create a new object that will be needed later

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(matrix){
    m<<-matrix
    i<<-NULL
}
get<-function(){
}
setInverse<-function(inverse){
  i<<-inverse
}
getInverse<-function(){
}
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

## Computes the Inverse of a Matrix with Caching

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  inverse<-x$getInverse()
  if(!is.null(inverse)){
    print("using cached data")
    return(inverse)
  }
  inv1<-x$getInverse()
  inverse<-solve(inv1)
  x$setInverse(inverse)
  inverse
  }

