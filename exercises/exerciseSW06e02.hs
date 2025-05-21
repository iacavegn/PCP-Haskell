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