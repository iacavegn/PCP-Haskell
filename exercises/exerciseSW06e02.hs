module Exercises where

-- SW06 exercise 02
-- a)
reduce :: (a -> a -> a) -> [a] -> a
reduce f [x] = x
reduce f (x:xs) = f x (reduce f xs)