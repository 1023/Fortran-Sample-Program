program HW25
    !積の計算
    pai=3.141592
    rho=7.8
    write(6,*)'r1,r2,h >>' !6はディスプレイへの出力
    read(5,*) r1,r2,h !5はキーボードでの入力
    write(6,*)'seki no keisan'
    write(6,*) 'r1=' ,r1,'r2=',r2,'h=',h
    v=pai*(r2**2-r1**2)*h/4.0 !**は累乗を意味する
    s=pai*((r2**2-r1**2)/2.0+(r1+r2)*h)
    w=v*rho
    write(6,*)'v=',v,'s=', s ,'w',w
End