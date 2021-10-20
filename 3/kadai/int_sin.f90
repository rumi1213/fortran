program int_sin
    implicit none
    real(8) dx, x, y, s  !倍精度実数を宣言
    !real,parameter :: pi = 3.1415927
    integer i, n
    n=100
    
    dx = 3.14d0 / dble(n)
    s = 0.0d0
    x = 0.0d0
    y = sin(x)
    s = s + 0.5d0 * y
    x = dx * dble(i)
    !y = x * (1.0d0 - x)
    !s = s + 0.5d0 * y


    do i = 1, n-1
        x = dx * dble(i)
        y = sin(x)
        s = s + y
    end do

    s = sin(x) * dx
    write(*,*) 's=', s

end program int_sin