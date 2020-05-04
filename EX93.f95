program EX93
    !AからZまでの内部コードの印刷
    ic=ichar('A')
    write(6,"(6('    ',a1,':',i2))")(char(ic+i-1),ic+i-1,i=1,26)
    is=ichar('a')
    write(6,"(6('    ',a1,':',i3))")(char(is+i-1),is+i-1,i=1,26)
end program EX93