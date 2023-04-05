busca :: [Int] -> Int -> Bool
busca [] _ = False
busca [x] y | x == y = True
            | otherwise = False
busca (a:b) buscando = 
    if a == buscando then
        True
    else
        busca b buscando

main = do
    print (busca [1, 2, 3, 4, 5, 6] 1)
    print (busca [1, 2, 3, 4, 5, 6] 4)
    print (busca [1, 2, 3, 4, 5, 6] 10)
