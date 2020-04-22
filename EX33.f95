program EX33
   !論理和　論理積　論理等価の計算
    logical A,B,LWA,LSK,LEV
    write(6,*)'a b >>'
    read(5,*) a,b
    LWA=A.or.b
    LSK=A.and.b
    LEV=A.eqv.b
    write(6,70)a,b
 70 format(' ','a=',L1,' b=',L1)
    write(6,71)LWA,LSK,LEV
 71 format(' ','a.or.b.=',L1,' a.and.b=',L1,' a.EQV.b=',L1)
    end