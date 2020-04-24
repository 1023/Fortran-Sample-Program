program HW48
    !実数の上限と下限を調べる
    write(6,*)'upper and lower limits of real number'
 10 write(6,*)'n >>'
    read(5,*) n
    if ( N<=0 ) stop
    s=1.0
    t=1.0
    do i=1,n
        s=s*i
        t=t/i
    end do
    write(6,60)n,s,n,t
 60 format(' ','s(',i3,')=',e12.5,'     t(',i3,')=',e12.5)
    go to 10    
end program HW48