!Print the sum or product upto n terms the series.
program abc
implicit none
integer::n,i
real::x,sum
print*,"Enter the number of terms n"
read*,n
print*,"Enter the value of x"
read*,x
sum=0.0
do i=1,n
sum=sum+cos((i-1)*x)
end do
print 1,sum
1 format(1x,"Result=",F6.3)
end program abc