import Data.Function
-- usada pra importar fix

fatorial :: Int -> Int
fatorial = fix (\f n -> if n == 0 then 1 else n * (f (n-1)))

main = do
    print (fatorial 6)
    -- fix, como combinador Y, permite recursividade com lambda
    -- x = f x = f (f x) = ...
    