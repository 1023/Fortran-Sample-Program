program HW46A
    !e^xのテイラー展開
    write(6,*)'X >>'
    read(5,*) x
 10 write(6,*)'N >>'
    read(5,*) n
    if ( n<=0 ) stop
    e=1.0
    d=1.0
    do i=1,n
        ri=i
        d=d*x/ri
        e=e+d            
    end do
    exact=exp(x)
    write(6,*)'N=',n,' keisan=',e,'   exp(',x,')=',exact
    go to 10
end program HW46A