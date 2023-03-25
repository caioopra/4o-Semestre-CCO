euclides :: Int -> Int -> Int
euclides a 0 = a
euclides a b =
    euclides b (mod a b)
    


main = do
    aString <- getLine
    let a = read aString :: Int

    bString <- getLine
    let b = read bString :: Int

    print "MDC:"
    print(euclides a b)