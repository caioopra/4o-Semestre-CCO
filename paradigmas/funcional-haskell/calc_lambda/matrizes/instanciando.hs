import Data.Matrix

tabuleiro6x6Valores :: [[Int]]
tabuleiro6x6Valores = [[2,0,0,0,1,0],
                        [0,0,0,3,0,0],
                        [0,3,0,0,5,3],
                        [0,0,0,0,0,0],
                        [0,0,3,0,4,2],
                        [0,0,0,0,0,0]]

tabuleiro6x6Grupos :: [[Int]]
tabuleiro6x6Grupos = [[1,1,2,2,2,3],
                    [4,4,4,4,4,3],
                    [5,6,6,6,4,7],
                    [5,5,5,6,7,7],
                    [8,8,10,0,0,0],
                    [9,9,10,10,0,0]]

main = do
    let first_matrix = fromLists tabuleiro6x6Valores
    print (nrows first_matrix) -- mostra o número de linhas em first_matrix
    print (ncols first_matrix) -- mostra o número de colunas

    -- indexação inicia em 1!!!
    print (getRow 1 first_matrix) -- retorna vetor com linha selecionada (válido para "cols")
    print (getElem 1 1 first_matrix)  -- retorna valor acessado em linha coluna; nesse caso linha 1 col 1 (primeiro elemento)

    -- gera matriz de zeros
    let zero_matrix = zero 6 6
    print (getRow 2 zero_matrix)