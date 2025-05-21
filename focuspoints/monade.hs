-- ### Monaden ###
saveDivision :: Double -> Double -> Maybe Double
saveDivision x 0 = Nothing
saveDivision x y = Just (x/y)

-- Beispiele mit Nothing als Resultat
result1 = saveDivision 4 0 >>= saveDivision 2
result2 = do r <- saveDivision 4 0
             saveDivision 2 r

-- Beispiele mit Nothing als Resultat
result3 = saveDivision 4 1 >>= saveDivision 2
result4 = do r <- saveDivision 4 1
             saveDivision 2 r

main :: IO ()
main = do
    print result1
    print result2
    print result3
    print result4