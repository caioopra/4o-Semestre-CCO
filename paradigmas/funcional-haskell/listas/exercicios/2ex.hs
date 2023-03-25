soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (a:b) = 1 + comprimento b

media :: [Int] -> Float
media [] = 0
media lista = fromIntegral (soma lista) / fromIntegral (comprimento lista)

main = do
    print (show (media [7, 8, 9]))
    print (show (media [1, 2, 3]))
    print (show (media [1, 1, 1]))