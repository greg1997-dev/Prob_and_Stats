# Lab 1: Introduction to R and its commands
x<-c(1,2,3,4,5,6) #define a vector of 6 elements
x1<-seq(1,6)#use sequence function for defining a vector of 6 elements

# What is the difference between x and x1?
typeof(x)
typeof(x1)
#R has element-wise operations
print(x1+x)
#Matrices
A<-matrix(seq(0.1,2,0.1),5,4,byrow = T)
B<-matrix(runif(20,1,18),4,5)
A*B #Notice this multiplication. Is it element-wise or is it a Matrix Mult
A %*% B

# Counting Principles: Defining function
perm<-function(n,r){
  if(r>n){
    print("Error: the number of arrangments cannot be bigger than the elements in the sample.")
    return(NA)
  }
  p=factorial(n)/factorial(n-r)
  return(p)
}

comb<-function(n,r){
  if(r>n){
    print("Error: the number of elements selected cannot be bigger than the elements in the sample.")
    return(NA)
  }
  p=factorial(n)/(factorial(n-r)*factorial(r))
}



