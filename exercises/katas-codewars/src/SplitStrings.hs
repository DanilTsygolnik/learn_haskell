module SplitStrings
(solution)
where

solution :: String -> [String]
solution "" = []
solution (x:[]) = [[x] ++ ['_']]
solution (x:y:rest) = [[x] ++ [y]] ++ (solution rest)
