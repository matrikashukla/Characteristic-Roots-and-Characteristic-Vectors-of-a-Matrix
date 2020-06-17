#Suppose we have a matrix A(3*3).

A<-matrix(c(-4,-4,-8,4,6,4,6,4,10),nrow=3,ncol=3,byrow=TRUE);A

#Eigen Decompsition
B<-eigen(A);B

#Eigen Values or Characteristic Roots
cv=B$val;cv

#Matrix of Characteristic Vectors 
P<-B$vec;P

#To find D=(P^-1)AP

#1.Inverse of the matrix P,i.e,P^-1
S<-solve(P);S

#2.To find (P^-1)*A
L=S%*%A;L

#3.To find D
D<-L%*%P;D

#To find A^5
Power<-A%*%A%*%A%*%A%*%A;Power

#To find inverse of A
InvA<-solve(A);InvA