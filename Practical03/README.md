"# Practical03 Documentation" 

This Fortran program calculates the integral of the function tan(x) from 0 to pi/3 using the trapezoidal rule. It sums the function values at discrete points, multiplies by the appropriate factor, and compares the result to the exact value log(2). Finally, it outputs the trapezoidal approximation, the exact result, and the difference between the two.

Compile:

gfortran Trap.f90 -o Trap

Execute:

./Trap

Output: 

 Initial area (sum at x(0) and x(12))   1.73205090
 New area of x(           2 ) =   2.25968218
 New area of x(           4 ) =   3.52352118
 New area of x(           6 ) =   5.61083746
 New area of x(           8 ) =   8.68945217
 New area of x(          10 ) =   13.0729599
 Trapezoidal result is   0.695044935
 Real result is   0.693147182
 The difference between the two is    1.8977522850036621E-003