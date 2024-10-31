Practical 06

This folder contains practical 6 codes.

Compile:

gfortran -c main.f90

gfortran -c mm.f90

gfortran -o matmultF main.o mm.o

Execute:

./marmultF

Output:


This is matrix A


 2. 3. 4.
 3. 4. 5.
 4. 5. 6.
 5. 6. 7.
 6. 7. 8.

This is matrix B


 0.-1.-2.-3.
 1. 0.-1.-2.
 2. 1. 0.-1.

This is matrix C


 11.  2. -7.-16.
 14.  2.-10.-22.
 17.  2.-13.-28.
 20.  2.-16.-34.
 23.  2.-19.-40.