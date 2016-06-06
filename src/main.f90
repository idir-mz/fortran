

program main

    use print_matrix_mod

    implicit none
    integer, parameter                          :: fd = 10
    integer                                     :: io
    integer                                     :: m, n

    real(kind=8), allocatable, dimension(:,:)   :: A
        
    
    
    
    open (unit=fd, file='toto.txt', status='old', iostat=io) 

    read(fd,*) m,n

    allocate(A(m,n))
    read(fd,*) A

    call print_dmatrix("A: ", A, row = 5, col = 10)


    close(fd)
    deallocate(A)

contains
    subroutine open_file(fd, io, f_status)
        integer                     :: fd, io
        character(len=*)            :: f_status
	                                            	
    end subroutine open_file
    
end program main
