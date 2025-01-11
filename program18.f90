!Read a matrix A and print AA' and A'A.
program abc
implicit none
integer::i,j,m,n,k,l
real,allocatable::a(:,:),b(:,:),c(:,:),ta(:,:)
print*,"Enter the order of matrix A"
read*,m,n
allocate(a(m,n),ta(m,n),b(m,n),c(m,n))
print*,"Enter the matrix A row wise"
read*,((a(i,j),j=1,n),i=1,m)
do i=1,m
do j=1,n
ta(i,j)=a(i,j)
end do
end do
print*,"The matrix A is"
do i=1,n
print*,(ta(i,j),j=1,m)
end do
do i=1,m
do j=1,m
b(i,j)=0
do k=1,n
b(i,j)=b(i,j)+(a(i,k)*ta(k,j))
end do
end do
end do
print*,"The matrix AA' is"
do i=1,m
print*,(b(i,j),j=1,m)
end do
do i=1,n
do j=1,n
b(i,j)=0
do l=1,m
c(i,j)=c(i,j)+(ta(i,l)*a(l,j))
end do
end do
end do
print*,"The matrix A'A is"
do i=1,n
print*,(c(i,j),j=1,n)
end do
end program abc
