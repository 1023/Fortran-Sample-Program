program EX61
    !数表の作成
    DATA pai/3.141592/
    write(6,*)'x0,y0,r,n >>'
    read(5,*) x0,y0,r,n
    write(6,60)
 60 format (' ',4x,'kakudo',9x,'x',9x,'y',5x,'kyori')
    da=180.0/real(n)
    a=0.0
    do i=1,n+1
        rad=a*pai/180
        x=r*cos(rad)+x0
        y=r*sin(rad)+y0
        d=sqrt(x*x+y*y)
        write(6,62)a,x,y,d
     62 format(' ',f10.1,3f10.3)
        a=a+da
    end do
end program EX61