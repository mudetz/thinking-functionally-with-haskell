module Chapter01.ExerciseD (answer) where

import Data.Char

answer :: [Char] -> [[Char]]
answer = map (map toLower) . words