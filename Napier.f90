! --- Napier Number ---
INTEGER :: k, max, m, n, r, j
INTEGER, ALLOCATABLE ::  keta(:)
! --- Input the digits ---
PRINT*,"How many digits do you want to calculate?"
READ*, k
ALLOCATE( keta(k) );  keta = 0
! --- Finding upper limit for M ---
max = k*log(10.0)
! --- Main Loop ---
DO m = max, 2, -1
   r = 1                           ! 1.0043...　の整数部の1
   DO n = 1, k
      j = 10*r + keta(n)
      keta(n) = j/m
      r = j - m * keta(n)          ! 余りを繰り越していく
   END DO
END DO
PRINT "(//' e = 2.', 10(1X, 5I1)/(7X, 10(1X, 5I1)))", keta
END