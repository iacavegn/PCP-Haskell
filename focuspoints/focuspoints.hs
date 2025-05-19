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
squaringMap = map' square

mapOnDoubleList = flip map' [1.2, 1.4]
-- mapOnDoubleList = \x -> map' x [1.2, 1.4]


-- #### List Comprehension ####
evens = [x | x <- [1..10], even x]
odds = [x + y | x <- [0..10], even x, y <- [0..10], odd y, x < y]
-- beispiele aus clojure verwenden




-- ### Monaden ###
saveDivision :: Double -> Double -> Maybe Double
saveDivision x 0 = Nothing
saveDivision x y = Just (x/y)

-- beispiel mit listen?
result1 = saveDivision 4 0 >>= saveDivision 2
result2 = do r <- saveDivision 4 0
             saveDivision 3 r