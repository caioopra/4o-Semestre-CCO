menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (a : b) = menorAux a (menor b)

menorAux :: Int -> Int -> Int
menorAux a b
  | a > b = b
  | a < b = a
  | otherwise = a

maior :: [Int] -> Int
maior [] = 0
maior [x] = x
maior (a : b) = maiorAux a (maior b)

maiorAux :: Int -> Int -> Int
maiorAux a b
  | a > b = a
  | a < b = b
  | otherwise = a

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [x] = 0
diferencaMaiorMenor [x, y]
  | x > y = x - y
  | otherwise = y - x
diferencaMaiorMenor lista = maior lista - menor lista

main = do
  print (show (diferencaMaiorMenor [4, 8, 10, 12, 26, 3]))