cabeca :: [t] -> t
cabeca (a:_) = a

main = do
    print(show (cabeca [1, 23, 1111, 111111]))
