program HW131
    !テキストファイルのへの出力
    dimension a(100),b(100)
    data n,pai /100,3.141592/
    open(1,file='data.txt')
    do i = 1, n
        a(i)=sin(2*pai*i/100.0)
    end do
    write(1,60)(a(i),i=1,n)
 60 format(5f12.5)
    rewind 1
    read(1,60)(b(i),i=1,n)
    write(6,*)'b(25)',b(25)
end program HW131