!Read a matrix A of order n and print the sum of (i)diagonal elements,(ii)the last column elements,(iii)the lower triangular elements. 
program matrix
implicit none
integer::i,j,n
real,allocatable::a(:,:)
real::sumd,sumlc,sumlt
print*,"Enter the order of the matrix A"
read*,n
allocate(a(n,n))
print*,"Enter the matrix A row wise"
read*,((a(i,j),j=1,n),i=1,n)
sumd=0
do i=1,n
sumd=sumd+a(i,i)
end do
print*,"The sum of the diagonal elements is",sumd
sumlc=0
do i=1,n
sumlc=sumlc+a(i,n)
end do
print*,"The sum of the last column is",sumlc
sumlt=0
do i=1,n
do j=1,n
if(i>j)then
sumlt=sumlt+a(i,j)
end if
end do
end do
print*,"The sum of lower triangle is",sumlt
end program matrix