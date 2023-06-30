module IsTriangle8kyu
    ( isTriangle )
    where

checkIfAllTrue :: [Bool] -> Bool
checkIfAllTrue = foldr (&&) True

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = checkIfAllTrue [ (a > 0)
                                  , (a < (b+c))
                                  , (b > 0)
                                  , (b < (a+c))
                                  , (c > 0)
                                  , (c < (a+b))
                                  ]
