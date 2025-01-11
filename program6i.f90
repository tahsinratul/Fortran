!Evaluation the series
program sum_series
implicit none
integer::i,n
real::sum
print*,"Enter the value of n"
read*,n
sum=0.0
do i=1,n
if(mod(i,2)==0)then
sum=sum+(i)/(i+1.0)
else
sum=sum+(1.0/i)
end if
end do
print*,"The value of sum",sum
end program sum_series