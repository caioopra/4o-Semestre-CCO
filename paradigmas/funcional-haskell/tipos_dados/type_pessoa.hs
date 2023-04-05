type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Int -> Pessoa
pessoa 1 = ("Bob", 25, "Haskell")
pessoa 2 = ("Tom", 22, "LISP")

getNome :: Pessoa -> Nome
getNome (n, _, _) = n

main = do
    putStrLn (show (pessoa 2))
    putStrLn (show (pessoa 1))
    putStrLn (show (getNome ("bin", 25, "scheme")))