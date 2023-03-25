auxMMC :: Int -> Int -> Int -> Int
auxMMC a b c =
    if mod c a == 0 && mod c b == 0
        then c
        else auxMMC a b (c + 1)

mmc :: Int -> Int -> Int
mmc a b = auxMMC a b 1

main = do
    xString <- getLine
    let x = read xString :: Int
    yString <- getLine
    let y = read yString :: Int

    print ("MMC entre os valores = " ++ show (mmc x y))
