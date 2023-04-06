-- classe: Eq
-- a     : instância da classe Eq somente se possui suporte ao operador "=="; para ser instancia de Eq, a precisa definir essa operação

class Equ a where
    (==) :: a -> a -> Bool

-- instance Equ Integer where
    -- x == y = x ==   y

main = do
    print ()
