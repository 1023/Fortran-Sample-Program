program EX121
    !時間の加算(モジュールtime_moduleを使用)
    !gfortran8.1だとなぜかcall time_addのところのxの型が違うとエラーになる。
    !実際には正しく実行できる(原因不明)
    use time_module
    type(time)::x,y,z
    y= time(2,18,25)
    x= time(1,56,48)
    call time_add(x,y,z)
    write(6,*)z%hh,':',z%mm,':',z%ss
end program EX121
