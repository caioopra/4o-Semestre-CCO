trianguloPossivel :: Int -> Int -> Int -> Bool
trianguloPossivel a b c | (((a + b) >= c) && ((a + c) >= b) && ((b + c) >= a)) = True
                        | otherwise = False

main = do
    print(trianguloPossivel 1 2 3)
    print(trianguloPossivel 4 4 4)
    print(trianguloPossivel 1 2 4)