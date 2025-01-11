!Evaluate the series.
program abc
implicit none
integer::i,n
real::sum
print*,"Enter the value of n"
read*,n
sum=0.0
do i=1,n
if(i<=4)then
sum=sum+i
else
sum=sum+i/(i+1.0)
end if
end do
print 1,sum
1 format(1x,"The sum is: ",F8.5)
end program abc