!
! Find e using a Taylor series expansion from e^0.
! The estimate gets worse after 13th order polynomial
! Because 13! is bigger than the maximum number that
! can be stored in 4 byte integer
!

PROGRAM finde

    INTERFACE
        FUNCTION factorial(n)
            INTEGER(KIND=4) :: factorial
            INTEGER(KIND=4), INTENT(IN) :: n
        END FUNCTION factorial
    END INTERFACE

    INTEGER(KIND=4) :: i, n
    REAL(KIND=8) :: one
    REAL(KIND=8), ALLOCATABLE :: terms(:)

    one = dble(1.0)

    ! Enter polynomial order
    READ(5,*) n

    ALLOCATE(terms(n+1))

    terms(1) = one
    DO i = 1, n
        terms(i+1) = one / REAL(factorial(i), KIND=8)
    END DO

    WRITE(6,*) 'e is estimated as ', SUM(terms), SUM(terms) - EXP(one)

    DEALLOCATE(terms)

    STOP
END PROGRAM finde

INTEGER(KIND=4) FUNCTION factorial(n)
    IMPLICIT NONE
    INTEGER(KIND=4), INTENT(IN) :: n
    INTEGER(KIND=4) :: i, x

    x = 1
    DO i = 1, n
        x = x * i
    END DO

    factorial = x
    RETURN
END FUNCTION factorial
