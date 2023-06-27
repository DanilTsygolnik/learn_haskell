module Chap2ex4
    ( lastV1
    , lastV2
    )
    where

lastV1 :: [a] -> a
lastV1 xs = head (reverse xs)

lastV2 :: [a] -> a
lastV2 xs = xs !! (length xs - 1)
