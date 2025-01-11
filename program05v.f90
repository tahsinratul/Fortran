!Print the sum or product upto n terms the series.
program abc
implicit none
integer::i,n
real::A,B,sum
print*,"Enter the value of n"
read*,n
print*,"Enter A and B"
read*,A,B
sum=0.0
do i=1,n
sum=sum+i/(A+(i-1)*B)
end do
print 1,sum
1 format(1x,"The sum is=",F8.5)
end program abc

