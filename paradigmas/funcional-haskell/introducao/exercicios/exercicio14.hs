mdc2Aux :: Int -> Int -> Int -> Int
mdc2Aux a b c = if mod a c == 0 && mod b c == 0 
    then c 
    else mdc2Aux a b (c-1)

mdc2 :: Int -> Int -> Int
mdc2 a b = mdc2Aux a b b

checkCoprime :: Int -> Int -> Bool
checkCoprime a b | mdc == 1 = True
                 | otherwise = False
                 where mdc = mdc2 a b


main = do
    aString <- getLine
    let a = read aString :: Int
    bString <- getLine
    let b = read bString :: Int

    print ("Sao coprimos? " ++ show (checkCoprime a b))
