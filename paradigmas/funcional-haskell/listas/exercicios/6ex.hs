ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) valor | a == valor = 1 + ocorrencias b valor
                        | otherwise = ocorrencias b valor

main = do
    print (show(ocorrencias [1, 2, 3, 2, 4, 5, 2] 2))
