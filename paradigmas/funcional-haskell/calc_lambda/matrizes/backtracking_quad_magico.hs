import Data.Matrix

-- verifica se soma da lista == s
checkSum :: [Int] -> Int -> Bool
checkSum list s = sum list == s

-- verificando se matriz é quadrado mágico completo
isCompletMagic :: Matrix Int -> Int -> Bool
isCompletMagic matrix s  = (magicRow && magicCol) && magicDiag
    where
        magicRow =  all (== True) [isMagic (getRow i matrix) s | i <- [1..n]]
        magicRow =  all (== True) [isMagic (getCol j matrix) s | j <- [1..n]]
        magicRow =  all (== True) [isMagic (getDiag k matrix) s | k <- [1, n+1]]

-- ver se linha/coluna/diagonal é quadrado mágico
isMagic :: [Int] -> Int -> Bool
isMagic list s = all (== True) [checkSum list s | list <- [list, reverse list]]

-- tenta encontrar uma solução para a matriz incompleta usando backtracking
backtrack :: Matrix Int -> Int -> Matrix Int
backtrack matrix s = go 1 1 matrix  -- inicialmente em (1, 1)
    where
        n = nrows matrix

        -- tenta na posição (i, j) com um valor válido e vai para prox. pos. vazia
        -- se nao conseguir encotrar valor, retorna a matriz original
        go :: Int -> Int -> Matrix Int -> Matrix Int
        go i j matrix
            | i > n = if (isCompleteMagic matrix s) then matrix else mzero n n
            | (getElem i j matrix) /= 0 = go (i + div (j+n-2) n) (mod (j+n-2) n + 1) matrix  -- go proxima posição
            | otherwise = 