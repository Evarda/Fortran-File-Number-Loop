subroutine variableNumberSize
    implicit none
    integer :: ii
    character*100 :: string_format
    character*100 :: filename

    ! write(filename, string_format) postfix
    ! open(unit=300, file=filename, status='unknown')

    do ii = 1, 2

        if (ii < 10) then
            string_format = '("Data/",A10,I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif

        write(filename, string_format) "Hi", ii
        open(unit=300, file=filename, status='unknown')
        write(300,*) "Hello World!"
        close(300)

        write(*,string_format) "Hello", ii

    enddo

    do ii = 8, 11

        if (ii < 10) then
            string_format = '("Data/Hello",I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif

        write(*,string_format) ii

    enddo

    do ii = 98, 101

        if (ii < 10) then
            string_format = '("Data/Hello",I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif
    
        write(*,string_format) ii

    enddo

    do ii = 998, 1001

        if (ii < 10) then
            string_format = '("Data/Hello",I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif
    
        write(*,string_format) ii
        
    enddo

    do ii = 9998, 10001

        if (ii < 10) then
            string_format = '("Data/Hello",I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif
    
        write(*,string_format) ii
        
    enddo

    do ii = 99998, 100001

        if (ii < 10) then
            string_format = '("Data/Hello",I1,".world")'
        else if (ii < 100) then
            string_format = '("Data/Hello",I2,".world")'
        else if (ii < 1000) then
            string_format = '("Data/Hello",I3,".world")'
        else if (ii < 10000) then
            string_format = '("Data/Hello",I4,".world")'
        else if (ii < 100000) then
            string_format = '("Data/Hello",I5,".world")'
        else if (ii < 1000000) then
            string_format = '("Data/Hello",I6,".world")'
        endif
    
        write(*,string_format) ii
        
    enddo
    

end subroutine

