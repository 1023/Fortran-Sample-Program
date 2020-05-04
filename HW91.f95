program HW91
    !任意の名前の姓、名の表示を反転させる
    CHARACTER(32)::in
    write(6,*)'name>>'
    read(5,'(a)') in
    in=adjustl(in)
    l=index(in,' ')
    m=len_trim(in(l:))
    write(6,*)in(l:l+m-1),' ',in(1:l-1)
end program HW91