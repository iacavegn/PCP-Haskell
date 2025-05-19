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



-- SW06 exercise 02
-- a)
reduce :: (a -> a -> a) -> [a] -> a
reduce f [x] = x
reduce f (x:xs) = f x (reduce f xs)