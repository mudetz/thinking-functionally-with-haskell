module Chapter01.ExerciseF (anagrams) where

import Data.List (intercalate, sort)

anagrams :: Int -> [String] -> String
anagrams len entries = let filteredWords = sort $ filter (\x -> len == length x) entries
                           grouped = groupWords filteredWords
                           asStrings = map groupAsString grouped
                       in intercalate "\n" asStrings


groupWords :: [String] -> [(String, [String])]
groupWords [] = []
groupWords (x:xs) = case groupWords xs of
                        [] -> [(sort x, [x])]
                        (g:grouped) -> let xKey = sort x
                                           groupKey = fst g
                                           headGroup = snd g
                                       in if groupKey == xKey
                                          then (groupKey, sort $ x : headGroup) : grouped
                                          else groupWords [x] ++ (g:grouped)


groupAsString :: (String, [String]) -> String
groupAsString (key, values) = key ++ ": " ++ intercalate "," values