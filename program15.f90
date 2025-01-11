!Read a square matrix A of order n and print a symmetric matrix B and skew-symmetric matrix C such that A=B+C.
program abc
implicit none
integer::i,j,n
real,allocatable::a(:,:),b(:,:),c(:,:)
print*,"Enter the order of matrix A"
read*,n
allocate(a(n,n),b(n,n),c(n,n))
print*,"Enter the matrix A row by row"
read*,((a(i,j),j=1,n),i=1,n)
do i=1,n
do j=1,n
b(i,j)=0.5*(a(i,j)+a(j,i))
c(i,j)=0.5*(a(i,j)-a(j,i))
end do
end do
print*,"The symmetric matrix is"
do i=1,n
print*,(b(i,j),j=1,n)
end do
print*,"The skew symmetric matrix is"
do i=1,n
print*,(c(i,j),j=1,n)
end do
end program abc