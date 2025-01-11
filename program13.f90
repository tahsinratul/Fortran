!Write a program to print Pascal's triangle.
program pascal_triangle
implicit none
integer:: n,i,j,k
print*,"Enter a number to define the rows in pascal triangle:"
read*,n
print*,"pascal Triangle with ",n," rows"
k=1 
do i=1,n 
	
	!sapcing 
	
	!coefficient
	
	do j=1,i
		write(*,"(I6)", advance="no")k 
		k=k+1;
	end do 
	write(*,"(//)") 
end do
 
end program pascal_triangle
