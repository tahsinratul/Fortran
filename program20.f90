!Define a function to determine h.c.f of a pair of positive integers and use it to print the h.c.f of consecutive pairs of an array of positive integers.
program abc
implicit none
integer::hcf,chcf,i,n
integer,allocatable::a(:)
print*,"Enter the size of the array"
read*,n
allocate(a(n))
print*,"Enter the array elements"
read*,a
do i=1,n-1
chcf=hcf(a(i),a(i+1))
print*,"The highest common factor of",a(i),"and",a(i+1),"is",chcf
end do
end program abc


integer function hcf(x,y)
implicit none
integer::m,n,x,y,k
m=max(x,y)
n=min(x,y)
do
k=mod(m,n)
if(k==0)then
hcf=n
exit
else
m=n
n=k
end if
end do
end function hcf