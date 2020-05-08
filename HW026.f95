program HW026
    !cm,kgのインチ,ポンドへの変換
    write(6,*)'kg,cm >>' 
    read(5,*) kg,cm
    pound=kg/0.4539
    inch=cm/2.54
    write(6,*)'pound=',pound,'inch=', inch
End