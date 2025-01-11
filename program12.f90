!Write a program to print Floyd's triangle.
program abc
implicit none
integer::n,i,j,k
k=0
print*,"Enter a number to define the rows in Floyd's triangle"
read*,n
print*,"Floyd's triangle with ",n," rows"
do i=1,n
do j=1,i
k=k+1
write(*,"(I6)",advance="no")k
end do
write(*,"(/)")
end do
end program abc

