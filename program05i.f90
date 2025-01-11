                                                                                                                                               !Print the sum or product upto n terms the series.
program abc
implicit none
integer::n,i
real::sum,alpha,beta
print*,"Enter the number of terms n"
read*,n
print*,"Enter alpha and beta"
read*,alpha,beta
sum=0.0
do i=1,n
sum=sum+sin(alpha+(i-1)*beta)
end do
print 1,sum
1 format(1x,"Result=",F4.2)
end program abc