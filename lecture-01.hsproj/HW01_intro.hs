module HW01_intro where

-- Credit Card Validation --
toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = (toDigits (n `div` 10)) ++ [n `mod` 10] 
  
toDigitsReverse :: Integer -> [Integer]
toDigitsReverse n = (reverse.toDigits) n
  
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



  