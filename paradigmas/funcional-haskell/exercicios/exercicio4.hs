xorFunction :: Bool -> Bool -> Bool
xorFunction x y | ((not x) && y) = True
                | (x && (not y)) = True
                | otherwise = False

main = do
    print(xorFunction False False)
    print(xorFunction True False)
    print(xorFunction False True)
    print(xorFunction True True)