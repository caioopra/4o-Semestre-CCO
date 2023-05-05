import Data.Matrix

matrixSum :: Matrix Int -> Int
matrixSum matrix = sum [getElem i j matrix | i <- [1..nrows matrix], j <- [1..ncols matrix]]

main = do
    let myMatrix = fromList 3 3 [1..]
    print myMatrix
    print (matrixSum myMatrix)