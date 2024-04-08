module Chapter02.ExerciseC (modernise) where

import Data.Char (toLower, toUpper)
  
capitaliseWord :: String -> String
capitaliseWord "" = ""
capitaliseWord (x:xs) = [toUpper x] ++ map toLower xs

modernise :: String -> String
modernise = unwords . (map capitaliseWord) . words
