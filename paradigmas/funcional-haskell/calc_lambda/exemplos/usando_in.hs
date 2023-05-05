-- "in" faz com o que vier entre let e in 
-- sejam válidos só dentro do que vem depois de in
-- let {atribuições} in {expressão)
main = do
    let c = 4
    let a = 5; b = 2 in (print (a + b))
    let d = 7

    -- a e b não estão definidos e não deixa compilar
    -- print a
    -- print b
    print c
    print d

