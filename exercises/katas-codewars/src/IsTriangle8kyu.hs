module IsTriangle8kyu
    ( isTriangle )
    where

import Data.List

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = (a > 0 && b > 0 && c > 0) && maxSide < (sum others)
                   where
                       (maxSide:others) = reverse (sort [a,b,c])
