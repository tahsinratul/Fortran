!Read n numbers and print them and their sorted list(ascending and descending).
program abc
implicit none
real::temp
real,allocatable::a(:)
integer::i,j,n
print*,"Enter the size of your array"
read*,n
allocate(a(n))
print*,"Enter your array"
read*,a
do i=1,n-1
do j=1,n-i
if(a(j)>a(j+1))then
temp=a(j)
a(j)=a(j+1)
a(j+1)=temp
end if
end do
end do
print*,"The ascending array is",(a(i),i=1,n)
do i=1,n-1
do j=1,n-i
if(a(j)<a(j+1))then
temp=a(j)
a(j)=a(j+1)
a(j+1)=temp
end if
end do
end do
print*,"The descending array is",(a(i),i=1,n)
end program abc

