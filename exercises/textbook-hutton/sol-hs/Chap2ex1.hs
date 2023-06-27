module Chap2ex1
    ( double
    , quadruple
    )
    where

double x = x + x
quadruple x = double (double x)
