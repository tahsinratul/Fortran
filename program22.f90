!print the A.M, G.M, H.M, SD, MD of a list of numbers using subroutine subprogram and function subprogram.
program abc
implicit none
integer :: n, i
real :: AM, GM, HM, SD, MD
real, allocatable :: a(:)
print *, "Enter the number of elements:" 
read *, n
allocate(a(n))
print *, "Enter the elements:" 
read *, (a(i), i = 1, n) 
print *, "The AM is", AM(a, n) 
print *, "The GM is", GM(a, n) 
print *, "The HM is", HM(a, n) 
print *, "The SD is", SD(a, n) 
print *, "The MD is", MD(a, n) 
end program abc
real function AM(a,n) 
implicit none 
integer :: i, n 
real :: a(n),sum 
sum = 0.0 
do i = 1, n 
sum = sum + a(i) 
end do 
AM = sum / n
end function 
real function GM(a, n) 
implicit none 
integer :: i, n 
real :: a(n), pro 
pro = 1.0 
do i = 1, n 
pro = pro * a(i) 
end do 
GM = pro ** (1.0 / n) 
end function 
real function HM(a, n) 
implicit none 
integer :: i, n 
real :: a(n), sum 
sum = 0.0 
do i = 1, n 
sum = sum + (1.0 / a(i)) 
end do 
HM = n / sum
end function 
real function SD(a, n) 
implicit none 
integer :: i, n 
real :: a(n), sum, AM, Avg 
Avg = AM(a, n) 
sum = 0.0 
do i = 1, n 
sum = sum + ((a(i) - Avg) ** 2) 
end do 
SD = sqrt(sum / (n - 1)) 
end function 
real function MD(a, n) 
implicit none 
integer :: i, n 
real :: a(n), sum, AM, Avg
Avg = AM(a, n)
sum = 0.0 
do i = 1, n 
sum = sum + abs(a(i) - Avg) 
end do 
MD = sum / n
end function
