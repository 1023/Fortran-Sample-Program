program EX92
    !名前のイニシャル表示
    CHARACTER(64)::name
    write(6,*)'name>>'
    read(*,"(a)")name
    name=adjustl(name)
    l=index(name,' ')
    name(l:)=adjustl(name(l:))
    write(*,"('  ',a1,'. ',a1,'.')") name(l:l),name(1:1)
end program EX92