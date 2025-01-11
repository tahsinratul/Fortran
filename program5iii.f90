!Print the sum or product upto n terms the series.
program abc
implicit none
integer::n,i
real::A,B,pro
print*,"Enter the number of terms n"
read*,n
print*,"Enter A and B"
read*,A,B
pro=1.0
do i=1,n
pro=pro*i/(A+(i-1)*B)
end do
print 1,pro
1 format(1x,"Result=",F6.3)
end program abc