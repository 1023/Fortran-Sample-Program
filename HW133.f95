program HW133
    !計算結果の外部出力
    open(1,file='out.dat')
    pai=3.141593
    x=0
    dx=0.5
    do i = 1, 61
        y=exp(-0.4*x)*cos(2.9*pai*x)
        write(1,*)x,y
        x=x+dx
    end do
end program HW133