program loop_exit
    implicit none
    integer i, wa, n
    do
     write(*, '(a)') 'input n (if n=0, stop):'
     read(*,*) n
     if( n == 0 ) then
        exit
     else if( n < 0 ) then
        write(*,*) 'Input positive n ...'
        cycle
     end if
     wa = 0
     do i = 1, n
        wa = wa + i
     end do
     write(*,*) 'wa = ', wa
    end do
    write(*,*) 'exit from do-loop ...'
end program loop_exit