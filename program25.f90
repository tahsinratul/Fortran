!Read n numbers and insert a number in a particular position and print the inputted list and the resultant list.
program abc
implicit none
integer::pp,n,i
real::pd
real,allocatable::a(:),b(:)
print*,"Enter the size of old array"
read*,n
allocate(a(n),b(n+1))
print*,"Enter your array"
read*,a
print*,"Enter your particular position"
read*,pp
print*,"Enter your particular data"
read*,pd
do i=1,n+1
if(i<pp)then
b(i)=a(i)
else if(i==pp)then
b(i)=pd
else
b(i)=a(i-1)
end if
end do
print*,"Inputted list"
print*,a
print*,"Resultant list"
print*,b
end program abc