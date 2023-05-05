main = do
    print ((\x y -> x + y) 3 5)
    print (map (\x -> x + 1) [1, 2, 3, 4])

    print (map (\x -> x * 2) [1, 2, 3, 4])

    print (map (\x -> if x == 0 then "a" else "b") [0, 1, 0, 0, 1])
