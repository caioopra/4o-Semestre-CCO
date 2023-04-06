-- pol. parametrico: tipos genericos
gerarPares :: [t] -> [u] -> [(t, u)]
gerarPares l1 l2 = [(a, b) | a <- l1, b <- l2]

-- polimorfismo (ad-hoc (coerção/coercion)): convesão implicia de tipos
soma :: Float -> Float -> Float
soma x y = x + y + 1

main = do
    print (soma 21 10)  -- inteiros convertidos pra Float
    