program HW63
    !数表の作成
    DATA pai,zero/3.141592,1.0E-10/
    write(6,*)'x0,y0,r,n >>'
    read(5,*) x0,y0,r,n
    n2=n+1
    write(6,60)
 60 format (6x,'    a',9x,'x',9x,'y',5x,'kyori','  x kakudo')
    da=180.0/n
    a=0.0
    do i=1,n2
        rad=a*pai/180
        x=r*cos(rad)+x0
        y=r*sin(rad)+y0
        d=sqrt(x*x+y*y)
        if ( abs(x)<=zero)xkaku=90.0
        if ( abs(x)>zero) xkaku=atan(y/x)*180.0/pai
        if ( xkaku<0.) xkaku=180.0+xkaku     
        write(6,62)a,x,y,d,xkaku
     62 format(' ',f10.1,3f10.3,f10.1)
        a=a+da
    end do    
end program HW63