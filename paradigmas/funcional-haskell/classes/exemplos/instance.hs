class (Num a) => MeuFloat a where
    (+++) :: a -> a -> a
    (***) :: a -> a -> a

    x *** y = x * x * y

instance MeuFloat Double where
    x +++ y = 2 * x + y

instance MeuFloat Integer where
    x +++ y = 10 * x + y

main = do
    -- MeuFloat Integer
    print ((4::Integer) *** (2::Integer))
    
    print ((4.2::Double) *** (2::Double))
