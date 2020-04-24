program HW44
    !n次元ベクトルの内積の計算
    write(6,*)'n>>'
    read(5,*) n
    s=0.0
    do i = 1, n
        write(6,60)i,i
     60 format(' ','a',i2, '   b',i2,'?')
     write(6,*)'a,b>>'
     read(5,*) a,b
     s=s+a*b
    end do
    write(6,*)'s=',s
end program HW44