program EX131
    !テキストファイルの作成
    character*80 s
    open(1,file='news')
 10 read(5,60,end=12)s
    write(6,60)s
    go to 10
 12 continue
 60 format(a80)
 close(1,status='keep')
end program EX131