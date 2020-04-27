program EX51
    !n個のデータの平均と標準偏差の算出
    dimension a(100)
    write(6,*)'N >>'
    read(5,*) n
    if ( n<1.or.n >100 )stop
    write(6,*)'input',n,' data'
    read(5,*) (a(i),i=1,n)
    s=0
    do i = 1, n
        s=s+a(i)
    end do
    hkn=s/n
    ss=0
    do i = 1,n
        r=a(i)-hkn
        ss=ss+r*r
    end do
    sg=sqrt(ss/n)
    write(6,*)'平均=',hkn,' 標準偏差=',sg
end program EX51