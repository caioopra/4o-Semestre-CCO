delta :: Float -> Float -> Float -> Float
delta a b c = b*b -  4*a*c

bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c=
    (x1, x2) where
        x1 = (-b + sqrt d) / (2*a)
        x2 = (-b - sqrt d) / (2*a)
        d = delta a b c

main = do
    aString <- getLine
    let a = (read aString :: Float)
    bString <- getLine
    let b = (read bString :: Float)
    cString <- getLine
    let c = (read cString :: Float)

    print(bhaskara a b c)