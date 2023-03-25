igual :: [Int] -> [Int] -> Bool
igual [] [] = True
igual [] _ = False
igual _ [] = False
igual (a:b) (c:d) | a == c = igual b d
                  | otherwise = False

main = do
    print (show(igual [1, 2, 3] [1, 2, 3]))
    print (show(igual [1, 2, 3] [1, 2, 5]))