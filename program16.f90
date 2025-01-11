!Read two matrices A and B and test whether AB is defined if AB exists, print the product AB.
program abc
implicit none
integer::i,j,m,n,p,q,k
real,allocatable::a(:,:),b(:,:),c(:,:)
print*,"Enter the order of the matrix A"
read*,m,n
print*,"Enter the order of the matrix B"
read*,p,q
if(n==p)then
allocate(a(m,n),b(p,q),c(m,q))
print*,"Enter the matrix A row wise"
read*,((a(i,j),j=1,n),i=1,m)
print*,"Enter the matrix B row wise"
read*,((b(i,j),j=1,q),i=1,p)
do i=1,m
do j=1,3
c(i,j)=0
do k=1,n
c(i,j)=c(i,j)+(a(i,k)*b(k,j))
end do
end do
end do
print*,"The product of matrix"
do i=1,m
print*,(c(i,j),j=1,q)
end do
else
print*,"Multiplication is not possible"
end if
end program abc

