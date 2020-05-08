program EX71
    !角度aからm秒刻みに90度まで変化させたときの距離d,高さhの算出と最大値の出力
    dist(a,v,g)=v*v*sin(2.0*a)/g
    hight(a,v,g)=v*v*sin(a)*sin(a)/(2*g)
    data pai,g /3.141592,9.8/
    write(6,*)'m v >>'
    read(5,*)m,v
    write(6,60)
 60 format(' ','** dakyuu no kyori to takasa **',/,' ','kakudo',6x'kyori',6x,'takasa')
    dmax=0
    imax=0
     do i = 0, 90,m  
        ang=i*pai/180.0
        d=dist(ang,v,g)
        h=hight(ang,v,g)
        write(6,62)i,d,h
        if ( d>dmax )then 
            dmax=d
            imax=i
        endif 
    end do
 62 format(' ',i5,2e12.3)   
    write(6,64)dmax,imax
 64 format(/' ','maximum distance=',f8.2,'   at a='i5)
end program EX71