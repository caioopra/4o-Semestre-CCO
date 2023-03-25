add :: Int -> [Int] -> [Int]
add a [] = [a]
add a (b:c) | a <= b = a : b : c
            | otherwise = b : (add a c)

ordenacao :: [Int] -> [Int]
ordenacao [] = []
-- adiciona cada elemento na lista ordenada
ordenacao (a:b) = add a (ordenacao b)

main = do
    print (show(ordenacao [1, -3, 4, 12, 0]))