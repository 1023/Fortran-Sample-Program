program EX132
    !テキストファイルの入出力
    open(1,file='wh.txt')
    write(6,*)'ninzu>>'
    read(5,*) n
    write(1,60)n
 60 format(i5)
    do i = 1, n
        write(6,*)'w,h >>'
        read(5,*) w,h
        write(1,62)w,h
     62 format(2f10.2)
    end do
    rewind 1
    read(1,60) n
    sw=0
    sh=0
    do i = 1, n
        read(1,62) w,h
        sw=sw+w
        sh=sh+h
    end do
    heikinw=sw/n
    heikinh=sh/n
    write(6,*)'  heikin taizyu  ',heikinw
    write(6,*)'  heikin sintyo  ',heikinh
end program EX132