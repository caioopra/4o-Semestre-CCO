main = do
    xString <- getLine
    let x = (read xString :: Integer)
    yString <- getLine
    let y = (read yString :: Integer)
    zString <- getLine
    let z = (read zString :: Integer)

    let aprovado = (\media -> if media >= 6 then "aprovado" else "reprovado") ((\a b c -> fromInteger (a + b + c) / 3) x y z)

    print aprovado