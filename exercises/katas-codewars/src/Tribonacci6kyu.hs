module Tribonacci6kyu
    ( tribonacci )
    where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) 0 = []
tribonacci (a, b, c) 1 = [a]
tribonacci (a, b, c) 2 = [a,b]
tribonacci (a, b, c) 3 = [a,b,c]
tribonacci (a, b, c) n = a : b : c : f (a,b,c) (n - 3)
    where
        f :: Num a => (a, a, a) -> Int -> [a]
        f _ 0 = []
        f (a,b,c) n = s : f (b,c,s) (n - 1)
            where s = a + b + c
