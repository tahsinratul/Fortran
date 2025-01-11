!Write a program to print a given number whether it is prime or not and print its pre and post prime numbers.
program abc 
implicit none
integer::i,n,isprime 
print*,"Enter the number" 
read*,n 
if(isprime(n)==1)then 
print*,"The number is prime"
else
print*,"the number is not prime" 
end if 
if(n<3)then
print*,"the pre prime does not exist"
else 
do i=n-1,2,-1 
if(isprime(i)==1)then 
print*,"pre prime is",i
exit
end if 
end do 
end if
i=n+1
do
if(isprime(i)==1)then 
print*,"post prime is",i
exit 
end if 
i=i+1
end do 
end program abc 
integer function isprime(n) 
implicit none 
integer::n,i,t 
t=1 
if(n<2)then 
t=0 
else 
do i=2,n/2 
if(mod(n,i)==0)then 
t=0
end if
end do
isprime=t 
end if 
end function isprime

