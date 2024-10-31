module functions

	interface

	function matmult (n, p, q, a, b) result (c)

	INTEGER (KIND = 4), intent (in) :: n, p, q
	REAL (KIND = 8), intent (in) :: a(n,p), b(p,q)
	REAL (KIND = 8) :: c(n,q)
	INTEGER (KIND = 4) :: i, j, k

	end function	

	end interface


end module functions




PROGRAM MATRIXMULT

	use functions
	implicit none

	INTEGER (KIND = 4), PARAMETER :: n=5, p=3, q=4
	REAL (KIND = 8) a(n,p), b(p,q), c(n,q)
	INTEGER (KIND = 4) :: i, j, k


	!initialise A,B,C matrices

	do i = 1,n

	      do j = 1,p

	  		a(i,j) = i+j

	      end do

        end do


	do i = 1, p

	      do j = 1, q


			b(i,j) = i-j


	       end do

	end do

	c=0.0


	!perform multiplication of matrices

	c = matmult(n, p, q, a, b)





	!print matrices

	write(6, '(/, a, /, /)') 'This is matrix A'


	do i = 1, n

		do j = 1, p


			write(6, '(f3.0)', advance = 'no') a(i,j)


		end do


	
		write (6, *)

	end do






	write(6, '(/, a, /, /)') 'This is matrix B'


        do i = 1, p

                do j = 1, q


                        write(6, '(f3.0)', advance = 'no') b(i,j)


                end do



        write (6, *)

        end do





	write(6, '(/, a, /, /)') 'This is matrix C'


        do i = 1, n

                do j = 1, q


                        write(6, '(f4.0)', advance = 'no') c(i,j)


                end do


        	write (6, *)

        end do





END PROGRAM MATRIXMULT
