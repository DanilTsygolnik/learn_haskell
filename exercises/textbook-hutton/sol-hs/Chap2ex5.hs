module Chap2ex5
    ( initV1
    , initV2
    )
    where

initV1 :: [a] -> [a]
initV1 xs = reverse (tail (reverse xs))

initV2 :: [a] -> [a]
initV2 xs = take (length xs - 1) xs
