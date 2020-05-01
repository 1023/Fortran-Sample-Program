program EX72
    !関数の積分
    write(6,*)'n,a,b >>'
    read(5,*) n,a,b
    h=(b-a)/real(n)
    sum=(f(a)+f(b))*h*0.5
    x=a
    do i=1,n-1
        x=x+h
        sum=sum+f(x)*h
    end do
    write(6,*)'kansuu no sekibun'
    write(6,60)a,b,sum
 60 format(' ','a=',f10.3,2x,'b=',f10.3,2x,'sekibun=',e12.3)
end program EX72
 function f(x)
        if ( abs(x)<1.0  )f=sqrt(1.0-x*x)
        if ( abs(x)>=1.0 )f=x*x-1.0 
        return
 end