program HW43
    !n人の学生の点数から最高点と最低点、平均点を算出
    integer saikou,tensu,saitei
    write(6,*)'ninzu >>'  
    read(5,*) n        
    if ( N<=0 ) stop
    s=0.0
    saikou=0.0
    saitei=100.0
    do i = 1, n
        write(6,*)'tensu >>'
        read(5,*) tensu
        s=s+tensu
        if ( tensu>saikou ) saikou=tensu   
        if ( tensu<saitei ) saitei=tensu     
    end do
    heikin=s/real(n)
    write(6,60)n,heikin,saitei,saikou
 60 format (' ','ninzu=',i5 / ' ', 'heikin=',f10.1,5x,'saitei=',i3,5x,'saikou=',i3)
    
end program HW43