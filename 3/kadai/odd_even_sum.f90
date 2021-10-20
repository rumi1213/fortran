program odd_even_sum
    implicit none
    integer i, wa0, wa1
    wa0 = 0
    wa1 = 0
    do i = 1, 100 ,2
        wa0 = wa0 + i
    end do
    do i = 0, 100, 2
        wa1 = wa1 + i
    end do
    write(*,*) 'wa0, wa1, wa = ', wa0, wa1, wa0+wa1
end program odd_even_sum