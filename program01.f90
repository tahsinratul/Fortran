!Write a program to check whether a triangle is Equilateral, Isosceles or Scalene.
program abc
implicit none
real::x1,x2,x3,y1,y2,y3,a,b,c
print*,"Enter the vertices (x1,y1)"
read*,x1,y1
print*,"Enter the vertices (x2,y2)"
read*,x2,y2
print*,"Enter the vertices (x3,y3)"
read*,x3,y3
a=sqrt((x1-x2)**2+(y1-y2)**2)
b=sqrt((x2-x3)**2+(y2-y3)**2)
c=sqrt((x1-x3)**2+(y1-y3)**2)
if(a+b>c .and. b+c>a .and. c+a>b)then
if(a==b .and. b==c)then
print*,"The triangle is Equilateral"
elseif(a==b .or. b==c .or. c==a)then
print*,"The triangle is Isoscales"
else
print*,"The triangle is Scalene"
end if
else
print*,"The triangle is not possible"
end if
end program abc

