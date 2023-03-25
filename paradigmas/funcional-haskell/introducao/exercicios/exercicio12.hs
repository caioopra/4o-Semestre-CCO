-- mdc :: Int -> Int -> Int -> Int
-- mdc x y z = gcd x (gcd y z)

mdc2 :: Int -> Int -> Int -> Int
mdc2 a b c = if mod a c == 0 && mod b c == 0 
    then c 
    else mdc2 a b (c-1)

mdc3 :: Int -> Int -> Int -> Int
mdc3 x y z = mdc2 first_mdc z z
    where first_mdc = mdc2 x y y 


main = do
    xString <- getLine
    let x = read xString :: Int
    yString <- getLine
    let y = read yString :: Int
    zString <- getLine
    let z = read zString :: Int

    print "MDC: "
    print(mdc3 x y z)
