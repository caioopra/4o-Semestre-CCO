alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

getNota :: (Int, String, Float) -> Float
getNota (_, _, nota) = nota

-- auxiliar para aprovados
verificaNota :: (Int, String, Float) -> Bool
verificaNota (_, _, nota) = nota >= 6

aprovados :: [(Int, String, Float)] -> [(Int, String, Float)]
-- aprovados lista = filter verificaNota lista
aprovados = filter verificaNota

-- aprovados2 :: [(Int, String, Float)] -> [Float]
-- aprovados2 lista = [x | x <- listaNotas lista, verificar x]
--     where
        -- verificar nota = nota >= 6

aprovados2 :: [(Int, String, Float)] -> [(Int, String, Float)]
aprovados2 lista = [aluno | aluno <- lista, verificaNota aluno]

-- gera lista com notas dos alunos
listaNotas :: [(Int, String, Float)] -> [Float]
listaNotas (a:b) = getNota a : listaNotas b 

main = do
    print (getPrimeiroAluno alunos)
    print (aprovados alunos)
    print (aprovados2 alunos)
