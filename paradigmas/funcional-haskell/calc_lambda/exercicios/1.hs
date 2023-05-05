-- XOR
main = do
    xString <- getLine
    let x = (read xString :: Bool)
    yString <- getLine
    let y = (read yString :: Bool)
    let usingXOR = (\x y -> if (x == y) then False else True) x y
    
    print (fromEnum usingXOR)
