subroutine readTerminalInput
    implicit none
    character*100 :: filename

    print *, "Enter file name:"
    read(*, *) filename

    print *, "The filename you entered is:"
    print *, filename

end subroutine