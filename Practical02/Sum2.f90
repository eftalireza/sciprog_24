
program sum
! Declare variables
   integer (kind=8) :: i, n
   real (kind=8) :: sum1, sum2, diff
   

! First sum
   sum1 = 0.0
   do i=1,1000
      
	sum1 = sum1 + 1/real(i)

   end do


! Second sum 
   sum2 = 0.0
   do i=1000,1,-1
   
	sum2= sum2 + 1/real(i)

   end do

   write(6,*) ' Sum1=',sum1
   write(6,*) ' Sum2=',sum2

! Find the difference
   diff = sum1 - sum2

   write(6,*) ' Difference between the two is ',diff

end program sum
