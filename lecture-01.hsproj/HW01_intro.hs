module HW01_intro where

-- Credit Card Validation --
toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = (toDigits (n `div` 10)) ++ [n `mod` 10] 
  
toDigitsReverse :: Integer -> [Integer]
toDigitsReverse n = (reverse . toDigits) n
  
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther l = [if i `mod` 2 == 0
  then x*2 else x | (i, x) <- zip [1..] l]
  
sumDigits :: [Integer] -> Integer
sumDigits l = sum [sum (toDigits x) | x <- l]

validate :: Integer -> Bool
validate x = (sumDigits . doubleEveryOther . toDigitsReverse) (x) `mod` 10 == 0

-- Tower of Hanoi --
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi n source aux dest
  | n == 0 = []
  | otherwise = hanoi (n-1) source dest aux
    ++ [(source, dest)]
    ++ hanoi (n-1) aux source dest


-- Frame–Stewart algorithm
-- https://en.wikipedia.org/wiki/Tower_of_Hanoi#With_four_pegs_and_beyond
hanoiFour :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoiFour n source aux1 aux2 dest
  | n == 0 = []
  | otherwise = hanoiFour k source aux1 dest aux2
    ++ hanoi (n - k) source aux1 dest
    ++ hanoiFour k aux2 aux1 source dest
  where k = (n - round(sqrt(2.0 * fromIntegral n + 1.0)) + 1)



  