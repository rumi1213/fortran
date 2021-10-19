module math_subprogs
    implicit none
contains
    recursive function factorial(n) result(m) !再帰呼び出し
        integer, intent(in) :: n
        integer m
        if (n <= 1) then
            m = 1
        else
            m = n * factorial(n-1)            !自分自身を呼び出す
        endif
    end function factorial
end module math_subprogs

program test_recursive
    use math_subprogs
    implicit none
    integer n, i, k
    write(*, '(a)', advance ='no') 'input n (0 <= n): '
    read(*,*) n
    if(n < 0) stop 'invalid n, bye'
    !反復計算により
    k = 1
    do i = 2, n
        k = k * i
    enddo
    write(*, *) 'factorial = ', k
    !再帰呼び出しにより階乗を計算
    write(*, *) ' factorial = ', factorial(n)
end program test_recursive