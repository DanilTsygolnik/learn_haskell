module Isograms7kyu
    (isIsogram)
    where

import Data.Char (toLower)
import Data.List (nub)

isIsogram :: String -> Bool
isIsogram [] = True
isIsogram cs = csl == (nub csl)
    where csl = map toLower cs
