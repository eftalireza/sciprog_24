include 'magic_square_stub.fh'

program magsq
    use msquare
    implicit none

    integer(kind=4) :: n, i, ierr
    integer(kind=4), allocatable :: magicSquare(:, :)
    character(len=6) :: text
    character(len=100) :: filename, line

    !
    ! Code for getting values from a file
    !

    ! Prompt the user to enter the file name containing the square matrix
    write(*, *) 'Enter the file name with the square matrix:'
    read(*, *) filename

    ierr = 0

    ! Open the file for reading
    open(unit=1, file=filename, form='FORMATTED', access='SEQUENTIAL', &
         action='READ', status='OLD', iostat=ierr)

    if (ierr /= 0) then
        write(*, *) 'Sorry, cannot find file ', trim(filename)
        goto 20
    end if

    ! Determine the size of the matrix (n)
    n = 0
    do while (ierr == 0)
        read(1, '(A)', iostat=ierr) line
        n = n + 1
    end do
    n = n - 1

    if (n <= 0) then
        write(*, *) 'Invalid matrix size. Exiting.'
        goto 10
    end if

    write(*, *) 'Matrix size (n): ', n

    rewind(unit=1)

    ! Allocate memory for the matrix
    allocate(magicSquare(n, n), stat=ierr)
    if (ierr /= 0) then
        write(*, *) 'Error allocating memory for the matrix. Exiting.'
        goto 10
    end if

    !
    ! Read the matrix values from the file
    !
    do i = 1, n
        read(1, *, iostat=ierr) magicSquare(i, :)
        if (ierr /= 0) then
            write(*, *) 'Cannot read in matrix correctly. Stopping!'
            goto 10
        end if
    end do

    ! Check if the matrix is a magic square
    if (isMagicSquare(magicSquare, n)) then
        text = 'is'
    else
        text = 'is NOT'
    end if

    write(*, *) 'This square ', trim(text), ' magic.'

    ! Free the allocated memory
    deallocate(magicSquare)

10  continue

    close(unit=1, status='KEEP')

20  stop

end program magsq
