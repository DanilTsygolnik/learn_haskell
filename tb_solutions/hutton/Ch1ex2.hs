module Ch1ex2 where

sumTask :: Num x => [x] -> x
sumTask [] = 0
sumTask (x:xs) = x + sumTask xs
