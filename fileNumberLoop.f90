program fileNumberLoop
    implicit none
    integer :: ii
    character*12 :: filename

    do ii = 100, 103
        write(filename,'("TEST",I4,".TXT")') ii
        open(unit=ii+100,file=filename,status='unknown')
        write(ii+100, *) "This is a test!"
        close(unit=ii+100)
    enddo

end program