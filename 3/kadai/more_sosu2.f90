program sosu
    implicit none
    integer i, n, id
    do n=2,100
        id=1
    do i=2,n-1
            if(mod(n,i)==0) then
                id=0
            endif
        end do
            if(id==1) then
    print *, i 
    end if
    end do
end program sosu