!Write a program to print the number of primes in a range of positive integers.
program abc 
implicit none
integer::m,n,i,isprime
print*,"Enter the number of m and n (m<n)"
read*,m,n
print*,"The prime numbers are" 
do i=m,n
if(isprime(i)==1) then
print*,i 
end if 
end do 
end program abc 
integer function isprime(n) 
implicit none 
integer::i,n,t 
t=1 
if(n<2) then 
t=0 
else 
do i=2,n/2
if(mod(n,i)==0)t=0 
end do
isprime=t 
end if
end function isprime
