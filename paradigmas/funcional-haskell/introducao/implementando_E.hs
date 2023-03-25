-- dois Bool e retorna um Bool
funcaoE :: Bool -> Bool -> Bool
funcaoE False _ = False
funcaoE _ False = False
funcaoE True True = True

main = print (funcaoE True False)
