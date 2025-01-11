! Read matrices Amxn and Bmxn and print the matrix lambda A + mu B.
program abc
implicit none
integer::i,j,m,n
real::lambda,mu
real,allocatable::a(:,:),b(:,:),c(:,:)
print*,"Enter the order of matrix A and B"
read*,m,n
allocate(a(m,n),b(m,n),c(m,n))
print*,"Enter the elements of matrix A row wise"
read*,((a(i,j),j=1,n),i=1,m)
print*,"Enter the elements of matrix B row wise"
read*,((b(i,j),j=1,n),i=1,m)
print*,"Enter the values of lambda and mu"
read*,lambda,mu
print*,"The sum of matrices is"
do i=1,m
do j=1,n
c(i,j)=lambda*a(i,j)+mu*b(i,j)
end do
end do
do i=1,m
print*,(c(i,j),j=1,n)
end do
end program abc

