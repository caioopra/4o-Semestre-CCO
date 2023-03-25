maior :: Float -> Float -> Float -> Float
maior a b c | a > b && a > c = a
            | b > c = b
            | otherwise = c

main = do
    aString <- getLine
    let a = (read aString :: Float)

    bString <- getLine
    let b = (read bString :: Float)

    cString <- getLine
    let c = (read cString :: Float)

    print(maior a b c)