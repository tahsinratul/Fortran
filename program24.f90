!Print the values of x and y(x) for x=x0 to x=xn with step h, where y(x) = x^3+sin2x.
program func_value 
implicit none 
real::x0,xn,y,p,h
print*,"Enter the initial value x0"
read*,x0
print*,"Enter the final value xn" 
read*,xn
print*,"Enter step size h" 
read*,h
print*,"The value of x and y(x):" 
p=x0
do
print*,"y(",p,")=",y(p)
p=p+h
if (p>xn) exit
end do 
end program func_value 
real function y(x)
implicit none 
real::x
y=x**3+sin(2*x) 
end function y
