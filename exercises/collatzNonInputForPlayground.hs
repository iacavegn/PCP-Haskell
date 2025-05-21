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
  print "Resultate bei 3"
  collatz 3 
  print "Resultate bei 7"
  collatz 7

-- Resultat bei n=3
-- 3
-- 3
-- 10
-- 5
-- 16
-- 8
-- 4
-- 2
-- 1

-- Resultat bei n=7
-- 7
-- 22
-- 11
-- 34
-- 17
-- 52
-- 26
-- 13
-- 40
-- 20
-- 10
-- 5
-- 16
-- 8
-- 4
-- 2
-- 1