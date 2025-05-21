-- ### Monaden ###
saveDivision :: Double -> Double -> Maybe Double
saveDivision x 0 = Nothing
saveDivision x y = Just (x/y)

-- Beispiele mit Nothing als Resultat
resultDivision0andBind = saveDivision 4 0 >>= saveDivision 2
resultDivision0andDo = do r <- saveDivision 4 0
             saveDivision 2 r

-- Beispiele mit Nothing als Resultat
resultBind = saveDivision 4 1 >>= saveDivision 2
resultDo = do r <- saveDivision 4 1
             saveDivision 2 r

main :: IO ()
main = do
    print resultDivision0andBind
    print resultDivision0andDo
    print resultBind
    print resultDo