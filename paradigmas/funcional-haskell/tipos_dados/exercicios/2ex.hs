data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo base altura) = base * altura
area (Triangulo base altura) = (base * altura) / 2

main = do
    print (area (Circulo 6.5))
    print (area (Retangulo 4 5))
    print (area (Triangulo 4 6))
