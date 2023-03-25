funcao :: Float -> Float -> Float
funcao x y = x ** y

main = do
    xString <- getLine
    let x = (read xString :: Float)
    yString <- getLine
    let y = (read yString :: Float)
    print (funcao x y)