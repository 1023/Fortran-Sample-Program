program HW45
    !台形公式による積分
 10 write(6,*)'n,a,b >>'
    read(5,*) n,a,b
    if ( N>1 ) go to 12
    write(6,*)'N must be greater than 1'
    go to 10
 12 h=(b-a)/n
    x=a
    s=(a*a+1.0)**0.5+(b*b+1)**0.5
    do i = 1, n-1
        x=x+h
        s=s+2.0*(x*x+1.0)**0.5
    end do
    s=s*h/2.0
    write(6,*)'sekibun=',s   
end program HW45