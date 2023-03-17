distancia :: Float -> Float -> Float -> Float -> Float -> Float -> Float
distancia x1 x2 y1 y2 z1 z2 =
    sqrt ((x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2)


main = do
    x1String <- getLine
    let x1 = (read x1String :: Float)
    x2String <- getLine
    let x2 = (read x2String :: Float)
    y1String <- getLine
    let y1 = (read y1String :: Float)
    y2String <- getLine
    z1String <- getLine
    let y2 = (read y2String :: Float)
    z2String <- getLine
    let z1 = (read z1String :: Float)
    let z2 = (read z2String :: Float)
    
    print(distancia x1 x2 y1 y2 z1 z2)