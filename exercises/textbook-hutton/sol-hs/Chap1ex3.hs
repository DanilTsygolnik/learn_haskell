module Chap1ex3
  ( Chap1ex3.product
  , Chap1ex3.productInner 
  )
  where

product :: [Int] -> Int
product [] = 0
product n = productInner n 

productInner :: [Int] -> Int
productInner [] = 1
productInner (x:xs) = x * productInner xs
