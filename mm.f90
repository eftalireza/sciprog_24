! Function for matrix multiplication

function matmult (n, p, q, a, b) result (c)

	INTEGER (KIND = 4), intent (in) :: n, p, q
	REAL (KIND = 8), intent (in) :: a(n,p), b (p,q)
	REAL (KIND = 8) :: c(n,q)
	INTEGER (KIND = 4) :: i, j, k





	!perform multiplication of matrices

	do i = 1, n

	   do j= 1, q

		do k = 1, p


			c(i,j) = c(i,j) + a(i,k) * b(k,j)

		end do


	    end do


	end do

	return
	
end function matmult

