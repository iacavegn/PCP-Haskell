main :: IO ()
main = print (addThree 5)

add :: Int -> Int -> Int
add x y = x + y

addThree :: Int -> Int
addThree = add 3