program HW83
    !データの入れ替え
    x=1.0
    y=-2.0
    write(6,60)x,y
 60 format('  original x= ',f8.3,'  original y= ',f8.3)
    call swap(x,y)
    write(6,70)x,y
70  format('  result   x= ',f8.3,'  result   y= ',f8.3)
end program HW83
subroutine swap(x,y)
    t=x
    x=y
    y=t
end