collatz :: Int -> IO ()
collatz n
  | n <= 1    = print n
  | otherwise = do
      print n
      let next = if even n then n `div` 2 else 3 * n + 1
      collatz next

main :: IO ()
main = do
  putStrLn "Gib eine natürliche Zahl > 1 ein:"
  input <- getLine
  let n = read input :: Int
  if n > 1
    then collatz n
    else putStrLn "Die Zahl muss größer als 1 sein!"
