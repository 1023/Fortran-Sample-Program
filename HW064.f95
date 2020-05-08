program HW64
    !数表の作成
    data pai/3.141592/
    write(6,60)
 60 format(' ','     x','     e(x)','         log(x)','       root(x)','   cos(10(x-1))')
    x=0
    do i = 1, 10
        x=x+1.0
        e=exp(x)
        xl=log(x)
        r=sqrt(x)
        rad=10.0*(x-1.0)*pai/180
        c=cos(rad)
        write(6,62)x,e,xl,r,c
     62 format(' ',f7.1,4e13.6)
    end do
end program HW64