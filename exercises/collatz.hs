-- SW05, exercise 9

-- Betrachten Sie folgenden Algorithmus:
-- Eingabe: natürliche Zahl n, n > 1.
--  Solange n > 1:
--    n ausgeben
--    Wenn n gerade:
--      Setze n = n/2
--    sonst:
--      Setze n = 3*n + 1
-- Welche Zahlenfolgen werden ausgegeben, wenn Sie den Algorithmus mit n=3 oder n=7 ausführen?

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
