-- exemplos de uso de newtype
newtype PositiveInt = PositiveInt Int
    deriving (Show)

addPositiveInts :: PositiveInt -> PositiveInt -> PositiveInt
addPositiveInts (PositiveInt x) (PositiveInt y) = PositiveInt (x + y)

newtype Angle = Angle Double
    deriving (Show)

degreesToRadians :: Angle -> Angle
degreesToRadians (Angle deg) = Angle (deg * pi / 180)

main = do
    let x = PositiveInt 4
        y = PositiveInt 5
        z = addPositiveInts x y 

    -- putStrLn $ "X + Y = " ++ show z
    print (addPositiveInts x y)

    print(degreesToRadians (Angle 90))
