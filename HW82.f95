program HW82
    !座標変換
    r=3.2
    t=3.14159265358979/3
    call rect(r,t,x,y)
    write(6,60)r,t
 60 format('  r = ',f8.3,'  t = ',f8.3)
    write(6,70)x,y
 70 format('  x = ',f8.3,'  y = ',f8.3)
    write(6,70)x,y
end program HW82
subroutine rect(r,t,x,y)
    x=r*cos(t)
    y=r*sin(t)
end