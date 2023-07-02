module DisemvowelTrolls7kyu
    ( disemvowel )
    where

import Data.Char (toLower)

disemvowel :: String -> String
disemvowel inpStr = [ c | c <- inpStr, isNotVowel c  ]
    where isNotVowel char = not ( (toLower char) `elem` "aeiou" )
