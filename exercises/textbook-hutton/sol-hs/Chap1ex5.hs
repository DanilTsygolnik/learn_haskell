module Chap1ex5
  ( qsortUniq )
  where

qsortUniq :: Ord x => [x] -> [x]
qsortUniq [] = []
qsortUniq (x:xs) = qsortUniq smaller ++ [x] ++ qsortUniq larger
               where
                   smaller = [a | a <- xs, a < x]
                   larger = [b | b <- xs, b > x]
