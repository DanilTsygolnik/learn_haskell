module Chap2ex5
    ( initV1
    )
    where

initV1 :: [a] -> [a]
initV1 xs = reverse (tail (reverse xs))
