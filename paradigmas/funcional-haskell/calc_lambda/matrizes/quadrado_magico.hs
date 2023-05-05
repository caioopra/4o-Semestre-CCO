import Data.Matrix

isPerfectSquare :: Matrix Int -> Bool
isPerfectSquare m = ((temTodosELementos && comparaLinhas) && comparaColunas)
    where
        temTodosELementos = checkElements m 
        comparaLinhas = compararSomaLinhas m
        comparaColunas = compararSomaColunas m
        -- comparaDiagonais = (comparaDiagP m) && (comparaDiagSec m)
-- faltando diagonais
-- verificar matrix(1, 1), matrix(2, 2), ... ,matrix(i, j) e ver se são iguais
-- matrix (1, 3), (2, 2), (3, 1)    => 1..nrows, nrows..1



-- lista para colocar todos elementos que ver
-- matrix
-- se false, colocou duplicado na lista e pode parar, senão, tem todos valroes diferentes ou nenhum incorreto
checkElements :: Matrix Int -> Bool
checkElements matrix = all (== True) [checkElement i matrix | i <- [1..nrows matrix]] 

-- inteiro que quer verificar
-- matriz
-- retorna True se estiver na lista
checkElement :: Int -> Matrix Int -> Bool
checkElement element matrix = element `elem` matrix

compararSomaLinhas :: Matrix Int -> Bool
compararSomaLinhas matrix = all (== s) sums
    where
        sums = [sum $ getRow i matrix | i <- [1..nrows matrix]]
        s = head sums

compararSomaColunas :: Matrix Int -> Bool
compararSomaColunas matrix = all (== s) sums
    where
        sums = [sum $ getRow i matrix | i <- [1..nrows matrix]]
        s = head sums

-- comparaDiagP :: Matrix Int -> Bool
-- comparaDiagP matrix = 

-- comparaDiagSec :: Matrix Int -> Bool
-- comparaDiagSec matrix 


main = do
    let myMatrix = fromList 3 3 [1..]
    let myMatrix2 = fromList 3 3 [2..]
    let magicSquare = fromList 3 3 [2, 7, 6, 9, 5, 1, 4, 3, 8]

    print (isPerfectSquare myMatrix)
    print (isPerfectSquare myMatrix2)
    print (isPerfectSquare magicSquare)
