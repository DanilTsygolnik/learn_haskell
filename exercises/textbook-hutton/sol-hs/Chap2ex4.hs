module Chap2ex4
    ( lastV1
    )
    where

lastV1 :: [a] -> a
lastV1 xs = head (reverse xs)
