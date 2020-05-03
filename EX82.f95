program EX82
    !多項式の計算
    dimension a(0:10)
    write(6,*)'n,a0,....,an  >>'
    read(5,*) n,(a(i),i=0,n)
    write(6,*)'m >>'
    read(5,*) m
    do j = 1, m
        write(6,*)'x >>'
        read(5,*)x
        call poly(x,a,n,f)
        write(6,*)'x=',x,'   f(x)=',f
    end do
end program EX82
subroutine poly(x, a,n,f)
    real,DIMENSION(0:n)::a
    f=a(n)
    do i = n-1, 0,-1
        f=f*x+a(i)
    end do
end subroutine poly