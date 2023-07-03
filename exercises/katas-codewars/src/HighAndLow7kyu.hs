module HighAndLow7kyu (highAndLow) where

import Data.List (sort)

highAndLow :: String -> String
highAndLow "" = ""
highAndLow "n" = "n n"
highAndLow inpStr = highSpaceLow
    where
        listOfInt = map (\str -> read str :: Int) (words inpStr)
        listOfIntSorted = sort listOfInt
        minInt = head listOfIntSorted
        maxInt = head (reverse listOfIntSorted)
        highSpaceLow = (show maxInt) ++ " " ++ (show minInt)
