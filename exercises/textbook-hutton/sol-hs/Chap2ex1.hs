module Chap2ex1
    ( double
    , quadruple
    , factorial
    , averageInaccurate
    )
    where

double :: Num x => x -> x
double x = x + x

quadruple :: Num x => x -> x
quadruple x = double (double x)

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

averageInaccurate :: [Int] -> Int
averageInaccurate ns = sum ns `div` length ns
