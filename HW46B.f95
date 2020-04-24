program HW46A
    !sinxのテイラー展開
    write(6,*)'X >>'
    read(5,*) x
 10 write(6,*)'N >>'
    read(5,*) n
    if ( n<=0 ) stop
    e=0.0
    d=1.0
    sign=-1.0
    do i=1,n
        ri=i
        d=d*x/ri
        if ( i/2*2==i ) go to 20
        sign=-1.0*sign 
        e=e+sign*d
 20     continue  
    end do
    exact=sin(x)
    write(6,*)'N=',n,' keisan=',e,'   sin(',x,')=',exact
    go to 10
end program HW46A