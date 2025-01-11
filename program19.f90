!Write a function subprogram for the function f(x) defined as follows.
program abc
implicit none
real::f,x,y
print*,"Enter the value of x"
read*,x
y=f(x)
print 1,y
1 format(1x,"The value of the functiobn is ="F6.2)
end program abc
real function f(x)
implicit none
real::x
if(x<=0)then
f=0
else if(x>0 .and. x<=2)then
f=x
else
f=2*x-2
end if
end function f