data Ponto = Ponto2D Float Float | Ponto3D Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia Ponto2D {} Ponto3D {} = 0
distancia Ponto3D {} Ponto2D {} = 0
distancia (Ponto2D x y) (Ponto2D a b) = sqrt ((x-a)**2 + (y-b)**2)
distancia (Ponto3D x y z) (Ponto3D a b c) = sqrt ((x-a)**2 + (y-b)**2 + (z-c)**2)

main = do
    print (distancia (Ponto2D 2 3) (Ponto2D 4 5))
    print (distancia (Ponto3D 2 3 4) (Ponto3D 4 5 6))
