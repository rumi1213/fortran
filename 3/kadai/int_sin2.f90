program int_sin2
    implicit none
    external f
    integer :: n,i
    real(8) :: a,b,h,x(0:10000),s,f
     
    a=0; b=3.14;
    write (*,*) 'input number'
    read (*,*) n
    h = (b-a)/(n+1)
     
    s = h*(f(a)+f(b))/2;
     
    do i=0,n-1
    x(i) = a + h*i
    s = s + h*f(x(i))
    end do
     
    write(*,*)'S =',s
     
    stop
end program sekibun
     
    !以下、積分する関数
    function f(x)
    implicit none
    real(8) :: f,x
     f=sin(x)
    return
    end function f