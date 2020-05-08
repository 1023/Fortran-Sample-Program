program EX41
    !n人の学生の点数から最高点と平均点を算出
    integer saikou,tensu
    write(6,*)'ninzu >>'  
    read(5,*) n        
    if ( N<=0 ) stop
    s=0.0
    saikou=0.0
    do i = 1, n
        write(6,*)'tensu >>'
        read(5,*) tensu
        s=s+tensu
        if ( tensu>saikou ) saikou=tensu        
    end do
    heikin=s/real(n)
    write(6,60)n,heikin,saikou
 60 format (' ','ninzu=',i5 / ' ', 'heikin=',f10.1,5x,'saikou=',i3)
end program EX41