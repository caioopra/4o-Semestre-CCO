divisivel :: Int -> Int -> String
divisivel x y | mod x y == 0 = "Divisivel"
                     | otherwise = "Nao divisivel"

main = do
    xString <- getLine
    let x = read xString :: Int
    yString <- getLine
    let y = read yString :: Int
    
    print ("Divisibilidade entre x e y: " ++ divisivel x y)
