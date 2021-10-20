program more_sosu
    implicit none
    integer i, id, n
    logical is_prime !判別サブルーチン
    print *, 'please write integer N'
    read *, n
    do i=2,n
        is_prime = .true.
        do id = 2, int(sqrt(dble(i)))        
        !実数から整数へ（切捨て）,int(),i = int(x). aが倍精度型である場合，結果は変換なしのaの値 (dble(a) = a)
            if(mod(i,id)==0) then
                is_prime = .false.
               exit
            end if
        end do
        if(is_prime) print *, i
    end do
end program more_sosu