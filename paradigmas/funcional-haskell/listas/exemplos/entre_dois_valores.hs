-- retorna uma lista que contém os valores entre dois valores em uma lista dada como entrada
entre :: [Int] -> Int -> Int -> [Int]
entre lista p q = [b | b <- lista, maiorQue b, menorQue b]
    where
        maiorQue x = x > p
        menorQue x = x < q

main = do
    print (entre [1, 7, 9, 4, 5, 6, 7, 4, 12] 4 9)
