!Print the sum or product upto n terms the series.
program abc
implicit none
integer::i,n
real::sum
print*,"Enter the number n"
read*,n
sum=0.0
do i=1,n
sum=sum+((-1)**(i-1)*(1.0/i))
end do
print 1,sum
1 format(1x,"The sum is:",F6.3)
end program abc