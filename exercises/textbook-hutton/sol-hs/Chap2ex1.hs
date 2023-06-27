module Chap2ex1
    ( double
    , quadruple
    )
    where

double :: Num x => x -> x
double x = x + x

quadruple :: Num x => x -> x
quadruple x = double (double x)
