program HW34
    !2次方程式の解を求める
    write(6,*)'ax^2+bx+C=0'
    write(6,*)'a,b,c >>'
    read(5,*)a,b,c
    if(a==0)then
        if (b==0)then
            write(6,*)'x=0'
        else
            x=-c/b
            write(6,*)'x=',x
        end if
    else
        d=b*b-4*a*c
        if ( d==0 ) then
            x=(-b)/(2*a)
            write(6,*)'jukon x=',x
        else if (D>0) then
            d=sqrt(d)
            x1=(-b+d)/(2*a)
            x2=(-b-d)/(2*a)
            write(6,*)'2jukon x1=',x1,' x2=',x2
        else 
            d=sqrt(-d)
            r=-b/(2*a)
            d=d/(2*a)
            write(6,*)'2hukusokon ',r,'+-',d,'i' 
        end if
    end if    
end program HW34