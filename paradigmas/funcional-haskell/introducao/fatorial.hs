-- recebe int e retorna int
fatorial :: Int -> Int
fatorial 0 = 1  -- se for o primeiro encontrado, vai executar e saur
fatorial n = n * fatorial (n-1)

main = do
    nString <- getLine
    let n = (read nString :: Int)
    print (fatorial n)
