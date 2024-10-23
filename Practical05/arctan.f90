module consts
    INTEGER (KIND=4), parameter :: length = 1000
end module consts

module hypob

    contains

    ! Calculates the inverse hyperbolic tangent of real 'x',
    ! with a precision error of less than 'delta'.
    FUNCTION arctanh(x, delta)
        implicit none
        real (kind = 8) :: arctanh, x, delta
        integer (kind = 4) :: n
        real (kind = 8) :: arcTan, elem, val

        arcTan = x
        n = 1
        elem = x

        do while (abs(elem) .ge. delta)
            val = 2 * n + 1
            elem = x**val / val
            arcTan = arcTan + elem
            n = n + 1
        end do

        arctanh = arcTan
    end FUNCTION arctanh

    ! Calculates the inverse hyperbolic tangent of real 'x'.
    FUNCTION artanh2(x)
        implicit none
        real (kind = 8) :: artanh2, x

        artanh2 = 0.5 * log((1 + x) / (1 - x))  ! Definition of arctanh
    end FUNCTION artanh2

end module hypob


PROGRAM invhypo

    use consts
    use hypob

    implicit none

    real (kind = 8) :: x, delta, tan1(length), tan2(length)
    integer (kind = 4) :: j

    ! Reading the precision to be applied to the numerical method
    write(6,*) 'Enter the precision to be applied (in (0,1)): '
    read(5,*) delta

    x = -0.9
    j = 1

    do while (x .le. 0.9 .AND. j <= length)
        tan1(j) = arctanh(x, delta)
        tan2(j) = artanh2(x)
        write(6, '(a,f20.10,a,f20.10)') 'Difference at ', x, ' is ', abs(tan1(j) - tan2(j))

        j = j + 1
        x = x + 0.1
    end do

end program invhypo

