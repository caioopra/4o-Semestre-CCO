import Data.Matrix

sumTwoMatrixes :: Matrix Int -> Matrix Int -> Int
sumTwoMatrixes m1 m2 = sum [(getElem i j m1) + (getElem i j m2) | i <- [1..nrows m1], j <- [1..nrows m2]]

main = do
    let m1 = fromList 3 3 [1..]
    let m2 = fromList 3 3 [2, 4..]
    print (sumTwoMatrixes m1 m2)
