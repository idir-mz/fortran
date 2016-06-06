


module print_matrix_mod
    implicit none
        
contains

    subroutine print_dmatrix(text, A, row, col)
        integer, optional                       :: row, col
        character(len=*)                        :: text
        real(kind=8), dimension(:,:)            :: A 
       
        !-- Local variables
        integer                                 :: m,n
        integer                                 :: i,j
        character(len=20)                       :: n_str !nb of columns => string 
        character(len=20)                       :: col_fmt 
       
        ! nbre of rows
        m = size(A(:,1))
        if (present(row) .and. row <= m ) then
            m = row
        end if
        !nrbe of columns
        n = size(A(1,:))
        if (present(col) .and. col <= n) then
            n = col
        end if

        ! n to string
        write(n_str,*) n
        col_fmt = '('//trim(adjustl(n_str))//'f16.6)'

        print*, "m = ", m
        print*, "n = ", n

        write(*,*)
        write(*,*) text
        write(*,col_fmt) ((A(i,j), j=1,n), i=1,m)
        write(*,*)

    end subroutine print_dmatrix

    
end module print_matrix_mod
