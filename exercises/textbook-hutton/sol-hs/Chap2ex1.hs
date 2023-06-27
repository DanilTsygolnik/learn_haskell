module Chap2ex1
    ( double
    , quadruple
    , factorial
    , averageInaccurate
    , averageBetter
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

toFloat :: Int -> Float
toFloat x = fromIntegral x

averageBetter :: [Float] -> Float
averageBetter ns = sum ns / toFloat ((length ns) :: Int)
