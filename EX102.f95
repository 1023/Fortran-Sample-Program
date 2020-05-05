program EX102
    !複素数の四則演算
    complex x,y,z1,z2,z3
    write(6,*)'x,y >>'
    read(5,*) x,y
    z1=x+y
    z2=x-y
    z3=x*y
    write(6,60)z1,z2,z3
 60 format(' ','z1=(',f6.3,',',f6.3')   z2=(',f6.3, &
            ',',f6.3,')   z3=(',f8.3,',',f6.3,')')
end program EX102