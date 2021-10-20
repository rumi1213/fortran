program sosu
    implicit none
    integer i, n, id
    do
     write(*,'(a)') 'input n (if n=0, stop):'
     read(*,*) n
     if( n == 0 ) then
        exit
     else if( n < 0 ) then
        write(*,*) 'Input positive n ...'
        cycle
    end if
    id=1
    do i=2,n-1
            if(mod(n,i)==0) then
              write(*,*) n,' sosu de nai '
               id=0
               exit
            endif
        enddo
        if(id==1) write(*,*) n,' sosu '
    end do
    write(*,*) 'exit from do-loop ...'
end program sosu