program daikei_sin
    implicit none
    real(8) dx, x, y, s
    integer i, n
    write(*,*) 'input n : '
    read(*,*) n
    if(n < 1) stop
    dx = 3.14d0 / dble(n)
    s = 0.0d0
    do i = 0, n
        x = dx * dble(i)
        y = sin(x)
        if( i==0 .or. i==n ) then
            s = s + 0.5d0 * y
        else
            s = s + y
        end if
    end do
    s = s * dx
    write(*,*) 's=', s
end program daikei_sin