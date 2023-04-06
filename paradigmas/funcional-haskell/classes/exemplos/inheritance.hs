class Equ a where
    (==), (/=) :: a -> a -> Bool
    x /= y = not (x == y)


-- Ordn é subclasse de Eq
class (Equ a) => Ordn a where
    (<), (<=), (>=), (>) :: a -> a -> Bool
    max, min :: a -> a -> a

-- subclasse de Num e Ord
class (Num a, Ordn a) => Real a where
    toRational :: a -> Rational


