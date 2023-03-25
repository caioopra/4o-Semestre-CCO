dobro :: [Int] -> [Int]
dobro [] = []
dobro (a:b) = a * 2 : dobro b

main = do
    print (show(dobro [3, 4, 5]))