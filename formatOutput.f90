subroutine formatOutput
    implicit none
    integer :: ii

    write(*, '(A5)') ("Hello", ii = 1, 3)
    write(*, '(A5)') "World"
end subroutine