module Chap1ex4
  ( revQsort )
  where

revQsort :: Ord x => [x] -> [x]
revQsort [] = []
revQsort (x:xs) = revQsort bigger ++ [x] ++ revQsort smaller
           where
               smaller = [ a | a <- xs, a <= x ]
               bigger = [ b | b <- xs, b > x ]
