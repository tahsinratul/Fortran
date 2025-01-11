!Write a program to print the triangular numbers in a range.
program abc
implicit none
integer::i,m,n,istriangular
print*,"Enter a number m,n and m<=n"
read*,m,n
print*,"Triangular numbers are"
do i=m,n
if(istriangular(i)==1)then
print*,i
end if
end do
end program abc
integer function istriangular(n)
implicit none
integer::sum,t,j,n
t=0
sum=0
do j=1,n,1
sum=sum+j
if(sum==n)then
t=1
exit
end if
end do
istriangular=t
end function istriangular