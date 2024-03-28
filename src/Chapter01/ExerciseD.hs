module Chapter01.ExerciseD where

import Data.Char

answer :: [Char] -> [[Char]]
answer = map (map toLower) $ words