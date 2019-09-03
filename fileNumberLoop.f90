subroutine fileNumberLoop
    implicit none
    integer :: ii
    character*17 :: filename

    do ii = 100, 103
        write(filename,'("Data/TEST",I4,".TXT")') ii
        open(unit=ii+100,file=filename,status='unknown')
        write(ii+100, *) "This is a test!"
        close(unit=ii+100)
    enddo

end subroutine