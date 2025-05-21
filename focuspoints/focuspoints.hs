module Focuspoints where

-- #### Strong Typing ###
square :: Double -> Double
square a = a*a

-- listen beispiele

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = (f x) : map' f xs

-- square' :: Num a => a -> a
-- square' a = a*a

-- map'' :: (a -> b) -> [a] -> [b]
-- map'' f xs = aux f xs []
--     where
--         aux :: (a -> b) -> [a] -> [b] -> [b]
--         aux f [] ys = ys
--         aux f (x:xs) ys = aux f xs (ys ++ [f x])


-- #### Partially Applied Functions & Currying ####
squaringMap :: [Double] -> [Double]
squaringMap = map' square

mapOnDoubleList :: (Double -> b) -> [b]
mapOnDoubleList = flip map' [1.2, 1.4]
-- mapOnDoubleList = \x -> map' x [1.2, 1.4]


-- #### List Comprehension ####
evens :: [Integer]
evens = [x | x <- [1..10], even x]
odds :: [Integer]
odds = [x + y | x <- [0..10], even x, y <- [0..10], odd y, x < y]
-- beispiele aus clojure verwenden