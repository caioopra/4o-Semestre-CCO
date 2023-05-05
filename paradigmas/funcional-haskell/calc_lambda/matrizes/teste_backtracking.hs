type Grid = Matrix Digit
type Digit = Char
type Matrix a = [Row a]
type Row a = [a]

digits :: [Digit]
digits = ['1'..'9']

blank :: Digit -> Bool
blank = (== '0')

solve :: Grid -> [Grid]
solve = filter valid . expand . choices

expand :: Matrix [Digit] -> [Grid]
expand = cartesianProduct . map cartesianProduct

cartesianProduct :: [[a]] -> [[a]]
cartesianProduct [] = [[]]
cartesianProduct (xs:xss) = [x:ys | x <- xs, ys <- cartesianProduct xss]

choices :: Grid -> Matrix [Digit]
choices = map (map choice)
  where
    choice d = if blank d then digits else [d]

valid :: Grid -> Bool
valid g = all noDuplicates (rows g) &&
          all noDuplicates (cols g) &&
          all noDuplicates (boxes g)

noDuplicates :: Eq a => [a] -> Bool
noDuplicates [] = True
noDuplicates (x:xs) = not (elem x xs) && noDuplicates xs

rows :: Matrix a -> [Row a]
rows = id

cols :: Matrix a -> [Row a]
cols [xs] = [[x] | x <- xs]
cols (xs:xss) = zipWith (:) xs (cols xss)

boxes :: Matrix a -> [Row a]
boxes = unpack . map cols . pack
  where
    pack = split . map split
    split = chop 3
    unpack = map concat . concat

chop :: Int -> [a] -> [[a]]
chop _ [] = []
chop n xs = take n xs : chop n (drop n xs)

solveSudoku :: String -> String
solveSudoku = format . head . solve . readGrid

readGrid :: String -> Grid
readGrid digitToInt = map (map intToDigit . take 9 . (++ repeat 0) . map digitToInt) . take 9 . (++ repeat "000000000") . lines

format :: Grid -> String
format = unlines . map (intersperse ' ' . map intToDigit)

main :: IO ()
main = interact solveSudoku