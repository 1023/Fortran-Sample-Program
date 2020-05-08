program EX52
    !3つの頂点座標の2次元ベクトルの重心座標と1点目と2点目の頂点間の距離の算出
    dimension p(2),q(2),r(2),g(2),pq(2)
    write(6,*)'p>>'
    read(5,*) p
    write(6,*)'q>>'
    read(5,*) q
    write(6,*)'r>>'
    read(5,*) r
    g=(p+q+r)/3
    write(6,*)'juusin',g
    pq=p-q
    s=sqrt(dot_product(pq,pq))
    write(6,*)'kyori ',s
end program EX52