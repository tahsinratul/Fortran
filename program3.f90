!Find the centre and radius of the circum circle of a triangle if the vertices of the triangle are given.
program abc
implicit none
real::a,b,c,x1,x2,x3,y1,y2,y3,a1,a2,b1,b2,c1,c2,h,k,r
print*,"Enter the 1st vertices of the triangle"
read*,x1,y1
print*,"Enter the 2nd vertices of the triangle"
read*,x2,y2
print*,"Enter the 3rd vertices of the triangle"
read*,x3,y3
a=sqrt((x1-x2)**2+(y1-y2)**2)
b=sqrt((x2-x3)**2+(y2-y3)**2)
c=sqrt((x1-x3)**2+(y1-y3)**2)
if((a+b)>c .and. (b+c)>a .and. (c+a)>b)then
a1=2*(x2-x1)
a2=2*(x3-x2)
b1=2*(y2-y1)
b2=2*(y3-y2)
c1=x1**2-x2**2+y1**2-y2**2
c2=x2**2-x3**2+y2**2-y3**2
h=(b1*c2-b2*c1)/(a2*b1-a1*b2)
k=(a2*c1-a1*c2)/(a2*b1-a1*b2)
r=sqrt((x1-h)**2+(y1-k)**2)
print 1,h,k
1 format(1x,"The centre of circum circle is",F6.2,F6.2)
print 2,r
2 format(1x,"The radius of circum circle is",F6.2)
else
print*,"Triangle does not exists for those point"
end if
end program abc


