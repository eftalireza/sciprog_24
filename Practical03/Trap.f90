PROGRAM TRAP

	IMPLICIT none
	INTEGER (kind=4) :: N=12, i
	REAL (kind=4) :: a=0.0, b_deg=60.0
	REAL (kind=4) :: pi, b_rad, area, mult_rad
	REAL (kind=8) :: Diff	

	! Convert b=pi/3 to radians
	pi = atan(1.0) * 4.0
	b_rad = (pi * b_deg)/180.0

	! Sum tan(a)+tan(b) where a and b are in radians
	area = tan(a) + tan(b_rad);
	write(6,*) 'Initial area (sum at x(0) and x(12))', area

	! Calculate the area at pts x1, x2, ..., x11 and add them up
	! as in the formula using loops
	! Using do loop


	! do i=5, 55, 5
	!	area = area + 2 * tan((pi * i)/180.0)
	!	write(6, *) 'New area of x(', i/5, ') =', area
	! end do


	! Using do while loop
	! i = 5
	! do while (i .lt. 60)
	!	area = area + 2 * tan ((pi * i)/180.0)
	!	write(6, *) 'New area of x(', i/5, ') =', area
	!	i = i + 5
	!end do
	

	! Use if statement in the loop
	! i = 5
	!do while(i .lt. 60)
	!	area = area + 2 * tan((pi * i)/180.0)
	!	if (mod(i, 2) .eq. 0) then
	!		write(6, *) 'New area of x(', i/5, ') =', area
	!	end if 
	!	i = i + 5
	!end do


	! Use select/case statement in the loop
	i = 5
	do while(i .lt. 60)
		area = area + 2 * tan((pi * i)/180.0)
		select case (mod(i, 2))
		 case (0)
		  write(6, *) 'New area of x(', i/5, ') =', area
		 end select
		 i = i + 5
	end do


	! Multiply area by (pi/3)/2(12) after converting it to radians

	mult_rad = (pi * ((b_deg - a) / (2 * N)))/180.0;
	area = mult_rad * area;

	write(6, *) 'Trapezoidal result is ', area

	! REAL results
	! INTEGRAL of tan is ln(2)


	write(6, *) 'Real result is ', log(2.0)


	! Difference between ln(2) and Trapezoidal

	
	Diff = area - log(2.0) 

	write(6, *) 'The difference between the two is ', diff


	STOP

END PROGRAM TRAP
