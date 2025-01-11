!Solve a quadratic equation and print its roots(roots may be real or complex).
program abc
implicit none
real::a,b,c,x1,x2,rp,ip,d
print*,"Enter the value of a,b,c"
read*,a,b,c
d=b*b-4*a*c
if(d>0)then
print*,"The roots are real and unequal"
x1=(-b+sqrt(d))/(2.0*a)
x2=(-b-sqrt(d))/(2.0*a)
print 1,x1,x2
1 format(1x,"The roots are",F6.2,F6.2)
else if(d==0)then
print*,"The roots are real and equal"
x1=-b/(2.0*a)
x2=-b/(2.0*a)
print 2,x1,x2
2 format(1x,"The roots are",F6.2,F6.2)
else
print*,"The roots and complex and imaginary"
rp=-b/(2.0*a)
ip=sqrt(abs(d))/(2.0*a)
print 3,rp,ip,rp,ip
3 format(1x,"The roots are",F6.2,"+i",F6.2,",",F6.2,"-i",F6.2)
end if
end program abc
