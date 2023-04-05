-- arvore pode ser Null ou um NO com valor Int e uma arvore esquerda e outa direita
data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 5 (No 3 Null Null) (No 8 (No 7 Null Null) (No 9 Null Null))

--    5
--  3   8
-- =   7  9
--    = ==  =
-- não necessariamente ordena

-- fazendo soma de todos elementos da arvore
somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + somaElementos esq + somaElementos dir

-- busca elemento da arvore
buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x
  | n == x = True
  | otherwise = buscaElemento esq x || buscaElemento dir x

limiteSup :: Int
limiteSup = 1000 -- define maior numero aceito

minimo :: Int -> Int -> Int
minimo x y
  | x < y = x
  | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup
minimoELemento (No n esq dir) =
  minimo n (minimo (minimoElemento esq) (minimoElemento dir))

main = do 
    putStrLn (show (somaElementos minhaArvore))
    putStrLn (show (buscaElemento minhaArvore 30))
    putStrLn (show (buscaElemento minhaArvore 55))
    putStrLn (show (minimoElemento minhaArvore))