fun1 :: Int -> (Int -> Int)
fun1 x = (\k -> k + x)

main = do
    let m = ((fun1 10) 5)
    print m