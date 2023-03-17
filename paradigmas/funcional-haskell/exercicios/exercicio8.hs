delta :: Float -> Float -> Float -> Float
delta a b c = b * b - (4 * a * c)

bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c | delta a b c >= 0 = ((-b + sqrt (delta a b c)) / (2*a), (-b - sqrt (delta a b c)) / (2*a))
               | delta a b c < 0 = (-1, -1)
               | otherwise = ((-b + sqrt (delta a b c)) / (2*a), (-b - sqrt (delta a b c)) / (2*a))


main = do
    aString <- getLine
    let a = (read aString :: Float)
    bString <- getLine
    let b = (read bString :: Float)
    cString <- getLine
    let c = (read cString :: Float)

    print(bhaskara a b c)
    

