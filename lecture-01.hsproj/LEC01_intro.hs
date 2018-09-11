-- Lecture 01 --
x :: Int
x = 3

i :: Int
i = -78

-- Basic Types --
n :: Integer
n = 2^(2^(2))

numDigits :: Int
numDigits = length (show n)

d1, d2 :: Double
d1 = 3.14
d2 = 4.20e-7

b1, b2 :: Bool
b1 = True
b2 = False

c1 :: Char
c1 = 'a'

s1 :: String
s1 = "this is a string"

-- Arithmetic --
ex01 = mod 19 3
ex02 = 19 `mod` 3 --infix operator--
--floor, ceiling, round--
ex03 = floor ((-1) + (-3))
ex04 = 1 + 3.34e-4
ex05 = 12 / 5
ex06 = 12 `div` 5
ex07 = fromIntegral ex01

--Boolean Logic--
b01 = True && False
b02 = not (False || True)
b03 = if True then 2 else 3 --if expression!!--
b04 = True /= False -- /= not equal --
-- <=, >=, <, > works on basic types --

-- Functions --
sumtorial :: Integer -> Integer
sumtorial 0 = 0 -- clause --
sumtorial n = n + sumtorial (n-1) -- clause --

ex08 = sumtorial 10

-- guards --
hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1
 
-- Pairs --
p01 :: (Int, Char)
p01 = (1, 'a')

sumPair :: (Int, Int) -> Int
sumPair (x, y) = x + y -- pattern matching --
-- don't use triples or > ---

-- multiple args --
f01 :: Int -> Int -> Int -> Int
f01 x y z = x + y + z













