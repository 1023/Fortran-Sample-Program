program HW47
    !投げたボールの時間ごとの高さの計算
    write(6,*)'n,v0,dt >>'
    read(5,*) n,v0,dt
    write(6,60)
 60 format(' ','  takasa  ' ,'  time')
    g=9.8
    t=0.0
    do i = 1, n+1
        y=v0*t-0.5*g*t*t
        write(6,62)t,y
        t=t+dt     
    end do
 62 format(' ',f7.2,f10.3)
end program HW47