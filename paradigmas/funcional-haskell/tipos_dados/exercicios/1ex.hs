type Nome = String
type Disciplina = String
type Notas = [Int]  -- 3 notas
type Aluno = (Nome, Disciplina, Notas)

aluno :: Int -> Aluno
aluno 1 = ("Caio", "paradigmas", [10, 9, 8])
aluno 2 = ("Aluno 2", "calculo 2", [1, 2, 3])
aluno 3 = ("Aluno 3", "calculo 3", [2, 2, 2])

getNome :: Aluno -> String
getNome (nome, _, _) = nome

getNotas :: Aluno -> Notas
getNotas (_, _, notas) = notas

getMedia :: Aluno -> Float
getMedia aluno = fromIntegral (notas!!0 + notas!!1 + notas!!2) / 3
    where notas = getNotas aluno

-- auxiliar para mediaTurmas
somaMedias :: Int -> Float
somaMedias 4 = 0
somaMedias contador = getMedia (aluno contador) + somaMedias (contador + 1)

mediaTurma :: Float
mediaTurma = somaMedias 1 / 3

main = do
    print (aluno 1)
    print (getNome (aluno 2))

    print (getMedia (aluno 1))

    print mediaTurma
