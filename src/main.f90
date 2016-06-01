

program main
    implicit none
    integer, parameter                          :: fd = 10
    integer                                     :: io
    integer                                     :: m, n
    integer                                     :: i, j


    real(kind=8), allocatable, dimension(:,:)   :: A
        
    
    
    
    print*,"Hello world!"   
    open (unit=fd, file='toto.txt', status='old', iostat=io) 

    print*, "File opened"
    read(fd,*) m,n

    allocate(A(m,n))
    read(fd,*) A


    !print'(15f16.6)', "A= ", A
    do i = 1,200 
        print'(12f16.6)', (A(i,j), j=1,12)        
    end do

    print*, "m ,n", m, n



    close(fd)
    deallocate(A)
    
end program main
