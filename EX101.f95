program  EX101
    !円周率の倍精度計算
    integer,parameter::k=kind(1.0d0)
    real(k)::pi
    pi=6.0_k*atan(1.0_k/sqrt(3.0_k))
    write(6,60)pi
 60 format(' ',f18.15)
    write(6,*)' 3.141592653589793'
end program EX101