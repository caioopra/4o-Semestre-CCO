menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (a:b) = menorAux a (menor b) 

menorAux :: Int -> Int -> Int
menorAux a b | a > b = b
             | a < b = a
             | otherwise = a

main = do
    print (show (menor [4, 5, 21, 0, -4]))
    