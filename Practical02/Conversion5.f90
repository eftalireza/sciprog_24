program conversion
! Declare variables 
   real (kind=16) :: i,inum,tmp,numdigits
   integer :: binnum(60)
   real(kind=16) :: fnum

! Intialise 4-byte integer
   inum = 0.00000001
! Convert to 4-byte float
   fnum = real(inum)       

! Binary converter using modulus   
!   i=1
!   tmp=inum
!   do while (tmp > 0)
!      if(mod(tmp,2)==0) then
!        binnum(i) = 0
!        else
!             binnum(i) = 1
!      end if
!      tmp = tmp/2
!      i = i+1
!   end do

! TODO Complete the expression
   numdigits = nint(log(real(inum)) / log(2.0)) + 1 
  write(6,*) ' The number of digits is ',numdigits

  write(6,*) 'inum =', inum, ', fnum =', fnum

  write(6,*) 'Difference =', inum - nint(fnum)

   write(6,'(a,i0,a,f0.1,a,b0)')  'inum=',inum,', fnum=',fnum,', inum in binary=',inum


end program conversion
