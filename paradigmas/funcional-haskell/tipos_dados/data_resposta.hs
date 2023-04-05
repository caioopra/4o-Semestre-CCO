data Resposta a = Sim a | Nao a

getRespostaInt :: Resposta Int -> String
getRespostaInt (Sim x) | x >= 80 = "muito bom"
                | otherwise = "bom"
getRespostaInt (Nao x) | x >= 80 = "muito ruim"
                | otherwise = "ruim"
                
getRespostaStr :: Resposta String -> String
getRespostaStr (Sim x) = x
getRespostaStr (Nao x) = x

main = do
    putStrLn (show (getRespostaInt (Sim 2)))
    putStrLn (show (getRespostaInt (Sim 89)))
    putStrLn (show (getRespostaInt (Nao 58)))
    putStrLn (show (getRespostaInt (Nao 83)))
    putStrLn (show (getRespostaStr (Sim "OK")))
    putStrLn (show (getRespostaStr (Nao "Nao")))