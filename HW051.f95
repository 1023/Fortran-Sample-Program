program HW51
    !フィボナッチ数列の計算
    integer,dimension(16) :: f
    f(1)=1
    f(2)=2
    do i = 3, 16
        f(i)=f(i-1)+f(i-2)
    end do
    write(6,60)f
 60 format(' ',4i8)
end program HW51