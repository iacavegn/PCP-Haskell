module Exercises where

-- SW05 exercise 08
-- a)
sumRange :: Integral a => a -> a -> a
sumRange x y = aux x y 0
    where
        aux x y s
            | x == y = s+y
            | x < y  = aux (x+1) y (s+x)
            | x > y  = 0

-- b)
sumSquares :: Integral a => a -> a -> a
sumSquares x y = aux x y 0
    where
        aux x y s
            | x == y = s + y^2
            | x < y  = aux (x + 1) y (s + x^2)
            | x > y  = 0

main :: IO ()
main = do
    print (sumRange 4 5) -- 9
    print (sumSquares 4 5) -- 41