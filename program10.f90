!Write a program to print the perfect numbers in a range of positive inegers.
program abc
implicit none
integer::m,n,i,isperfect
print*,"Please enter the positive integers m and n"
read*,m,n
print*,"Perfect numbers between m and n  are"
do i=m,n,1
if(isperfect(i)==1)then
print*,i
end if
end do
end program abc
integer function isperfect(n)
implicit none
integer::i,n,t,sf
t=1
sf=0
do i=1,n/2,1
if(mod(n,i)==0)then
sf=sf+i
end if
end do
if(sf==n)then
t=1
else
t=0
end if
isperfect=t
end function isperfect

