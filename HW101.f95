program HW101
    !単精度計算と倍精度計算の誤差の比較
    integer,PARAMETER::k=kind(1.0d0)
    real s
    real(k)::d
    s=1.0/3
    d=1.0_k/3
    write(6,*)s
    write(6,*)d
end program HW101
