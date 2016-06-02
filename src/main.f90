

program main

	use print_matrix_mod

    implicit none
    integer, parameter                          :: fd = 10
    integer                                     :: io
    integer                                     :: m, n
    integer                                     :: i, j

    real(kind=8), allocatable, dimension(:,:)   :: A
        
    
    
    
    open (unit=fd, file='toto.txt', status='old', iostat=io) 

    read(fd,*) m,n

    allocate(A(m,n))
    read(fd,*) A


    !print'(15f16.6)', "A= ", A
   ! do i = 1,200 
   !     print'(12f16.6)', (A(i,j), j=1,12)        
   ! end do

	call print_dmatrix("A: ", A)
    print*, "m ,n", m, n



    close(fd)
    deallocate(A)

contains
	subroutine open_file(fd, io, f_status)
		integer						:: fd, io
		character(len=*) 			:: f_status
		
	end subroutine open_file
    
end program main
