!Print the binomial coefficients "C, for 0<=r<=n (n<9) using function subprogram. 
program abc
implicit none
integer::n,factorial,nCr,i,p(100)
100 continue 
print*,"Enter the number n"
read*,n 
if(n<9)then 
print*,"Binomial coefficient are"
do i=0,n
nCr=factorial(n)/(factorial(i)*factorial(n-i))
p(i)=nCr 
print*,p(i)
end do
else
print*,"Enter the number between 0 to 9"
go to 100 
end if
end program
integer function factorial(n) 
implicit none 
integer::n,f,i 
f=1 
if(n>=0)then 
do i=1,n
f=f*i
end do 
end if
factorial=f
end function
