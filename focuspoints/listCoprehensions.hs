-- Vielfache von 2 von 1 bis 10
doppelte :: [Int]
doppelte = [x * 2 | x <- [1..10]]

-- Bedingung: Nur gerade Zahlen von 1 bis 20
geradeZahlen :: [Int]
geradeZahlen = [x | x <- [1..20], even x]

-- Kombination mehrerer Listen
kombinationen :: [(Int, Char)]
kombinationen = [(x, y) | x <- [1,2], y <- ['a','b']]

-- Mehreren Bedingungen
zahlenOhneDrei :: [Int]
-- zahlenOhneDrei = [x | x <- [1..20], x `mod` 3 /= 0, x `mod` 4 /= 0]
zahlenOhneDrei = [x | x <- [1..20], (/= 0) (mod x 3), (/= 0) (mod x 4)]

-- Mit einer Funktion
quadrate :: [Int]
quadrate = [x^2 | x <- [1..10]]

-- Ein kleines Beispiel, das Pythagoräische Tripel erzeugt
pythagoreischeTripel :: [(Int, Int, Int)]
pythagoreischeTripel = [(a, b, c) |
                         c <- [1..30],
                         b <- [1..30],
                         a <- [1..30],
                         a^2 + b^2 == c^2, a < b, b < c]

main :: IO ()
main = do
    putStrLn "Doppelte:"
    print doppelte

    putStrLn "\nGerade Zahlen:"
    print geradeZahlen

    putStrLn "\nKombinationen:"
    print kombinationen

    putStrLn "\nZahlen ohne 3 und 4:"
    print zahlenOhneDrei

    putStrLn "\nQuadrate:"
    print quadrate

    putStrLn "\nPythagoreische Tripel:"
    print pythagoreischeTripel
