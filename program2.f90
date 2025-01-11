!Print the area and perimeter of a triangle if the vertices of the triangle are given.
program abc
implicit none
real::x1,y1,x2,y2,x3,y3,area,perimeter,a,b,c,s
print*,"Enter the value of x1,y1"
read*,x1,y1
print*,"Enter the value of x2,y2"
read*,x2,y2
print*,"Enter the value of x3,y3"
read*,x3,y3
a=sqrt((x3-x2)**2+(y3-y2)**2)
b=sqrt((x2-x1)**2+(y2-y1)**2)
c=sqrt((x3-x1)**2+(y3-y1)**2)
if (a+b>c .and. b+c>a .and. c+a>b)then
perimeter=a+b+c
s=(a+b+c)/2.0
area=sqrt(s*(s-a)*(s-b)*(s-c))
print 1, area
1 format(1x"The area of triangle",F7.2)
print 2,perimeter
2 format(1x"The perimeter of triangle",F7.2)
else
print*,"It is not a triangle"
end if
end program abc
