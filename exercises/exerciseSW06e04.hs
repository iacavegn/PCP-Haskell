-- SW06 exercise 04
-- b)
sw06b = concatMap (\x -> [x, x]) [1,2,3]

-- c)
map''' :: (a -> b) -> [a] -> [b]
map''' f = concatMap (\x -> [f x])

-- d)
filter''' :: (a -> Bool) -> [a] -> [a]
filter''' p = concatMap (\x -> [x | p x])