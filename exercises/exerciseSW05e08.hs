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
map' :: (a -> b) -> [a] -> [b]
map' f xs = aux f xs []
    where
        aux f [] ys = reverse ys
        aux f (x:xs) ys = aux f xs (f x : ys)

-- b)


-- reduce :: (a -> a -> a) -> [a] -> a
-- reduce f [x] = x
-- reduce f (x:xs) = f x (reduce f xs)

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p xs = aux p xs []
    where
        aux p [] ys = reverse ys
        aux p (x:xs) ys = if p x
            then aux p xs (x:ys)
            else aux p xs ys

-- c)
map'' f = foldr (\x ys -> f x : ys) []
filter' f = foldr (\x ys -> if f x then x:ys else ys) []



-- SW06 exercise 04
-- b)
sw06b = concatMap (\x -> [x, x]) [1,2,3]

-- c)
map''' :: (a -> b) -> [a] -> [b]
map''' f = concatMap (\x -> [f x])

-- d)
filter''' :: (a -> Bool) -> [a] -> [a]
filter''' p = concatMap (\x -> [x | p x])