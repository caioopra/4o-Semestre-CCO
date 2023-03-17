aprovacao :: Float -> Float -> Float -> String
aprovacao a b c = 
    if ((a + b + c) / 3) >= 6 then
        "Aprovado"
    else 
        "Reprovado"

main = do
    print(aprovacao 10 10 10)
    print(aprovacao 4 5 6)
    print(aprovacao 4 5 9)