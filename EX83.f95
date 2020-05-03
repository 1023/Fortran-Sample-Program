program EX83
    !台形公式による積分
    external f
    write(6,*)' kizami , kagen , jpugen'
    read(5,*) n,a,b
    call integ(a,b,n,f,s)
    write(6,*)'kansuu no sekibun'
    write(6,60)a,b,s
 60 format(' a =',f10.3,2x,'b=',f10.3,2x,'sekibun=',e12.3)    
end program EX83
subroutine integ(a,b,n,f,sum)
    h=(b-a)/real(n)
    sum=(f(a)+f(b))*h*0.5 
    x=a
    do i = 1, n-1
      x=x+h
      sum=sum+f(x)*h
    end do
end subroutine integ
function f(x)
    if(abs(x)<1.0)then
        f=sqrt(1.0-x*x)
    else
        f=x*x-1.0
    end if
end