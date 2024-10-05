program conversion 

    IMPLICIT NONE	! All the variables must be explicitly declared

    ! Declare Variables

    INTEGER (kind=4) :: i,inum,tmp,numdigits
    ! i is loop counter
    ! inum is integer to convert
    ! tmp is temporary storage for inum
    ! numdigits stores the number of binary digits
	
    CHARACTER (len=32) :: binnum
    ! Binary string representation of inum

    REAL(kind=4) :: fnum
    ! Floating point representation of inum

    CHARACTER (len=32) :: binnum_reverse
    ! Reversed binary string

    INTEGER (kind=4) :: remainder, length, j
    ! remainder stores modulus result
    ! Length of the binary string
    ! Counter for string reversal

    ! Intialise 4-byte integer
    inum = 33554431

    ! Convert to 4-byte float
    fnum = real(inum)       

    ! Binary converter using modulus   
    i=1
    tmp=inum   ! Temporary Variable
    do while (tmp > 0)
        if(mod(tmp,2)==0) then    ! If the temporary variable can be divided by 2 = Odd
            binnum(i:i) = '0'
        else
            binnum(i:i) = '1'     ! If not = Even
        end if
        tmp = tmp/2
        i = i+1
    end do

    binnum=trim(binnum) !Removes trailing blank characters of a string.

    !Reverse the string
    length = len(binnum)     ! Get the length of the binary string
    do i = 1,length
        j = length - i + 1
        binnum_reverse(i:i) = binnum(j:j)
    end do

    

	! Calculate the number of digits using logarithm

	numdigits = nint(log(fnum)/log(2.0))



    ! Print the number of binary digits 
    ! Print the integer
    ! Print the floating-point
    ! Print the binary string

    write(6,*) ' The number of digits is ',numdigits
    write(6,*)  'inum=', inum ,', fnum=', fnum
    write(6,*)  'binary=', binnum_reverse

end program conversion
