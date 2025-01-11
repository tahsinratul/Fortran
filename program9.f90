!Write a program to read a positive integer n and print the factors of n and count them.
program abc
implicit none
integer::n,i,k
print*,"Enter the positive integer"
read*,n
k=0
do i=1,n
if(mod(n,i)==0)then
print*,i
k=k+1
end if
end do
print*,"Total factors of the number are",k
end program abc