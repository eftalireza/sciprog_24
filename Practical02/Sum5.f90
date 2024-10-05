program sum

! This program calculates two sums of the harmonic series from 1 to 1000 in different orders.
! It then finds and prints the difference between the two sums to demonstrate the effects
! of summation order.

! Declare variables

   IMPLICIT NONE       ! Ensures all variables must be explicitly declared

   integer (kind=4) :: i 		 ! Loop Counter
   real (kind=4) :: sum1, sum2, diff     ! Sum: Stores the results of the two Diff: Stores
				         ! their difference  
   

! First sum
   sum1 = 0.0		! Set Sum1 to zero

   do i=1,1000		! Loop from 1 to 1000
      
	sum1= sum1 + 1.0/real(i) ! Increment sum1 by reciprocal of i

   end do


! Second sum 
   sum2 = 0.0 		! Set Sum2 to zero

   do i=1000,1,-1 	! Loop from 1 to 1000
     
	sum2 = sum2 + 1.0 / real(i)  ! Increment Sum2 by reciprocal of i

   end do


! Print the results of the of two Sums

   write(6,*) ' Sum1=',sum1
   write(6,*) ' Sum2=',sum2

! Calculate and print the difference between the two
   diff = sum1 - sum2

   write(6,*) ' Difference between the two is ',diff

end program sum
