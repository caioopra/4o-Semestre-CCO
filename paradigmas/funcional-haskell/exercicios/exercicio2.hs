modulo :: Float -> Float
modulo x | (x > 0) = x
         | otherwise = -x

main = do
    xString <- getLine
    let x = (read xString :: Float)
    print(modulo (-4))
    print(modulo 32)
