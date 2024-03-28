module Chapter01.ExerciseG where

import Data.Char
import Data.List

numberToWord :: Int -> String
numberToWord n = case n of
                    2  -> "Two"
                    3  -> "Three"
                    4  -> "Four"
                    5  -> "Five"
                    6  -> "Six"
                    7  -> "Seven"
                    8  -> "Eight"
                    9  -> "Nine"
                    10 -> "Ten"
                    _  -> "???"

phrase :: Int -> String
phrase n =
    case n of
      1 -> "One man and his dog\n"
      _ -> numberToWord n ++ " men, " ++ (map toLower $ phrase $ n - 1)

singularVerse :: String
singularVerse = "One man went to mow\n" ++
                "Went to mow a meadow\n" ++
                phrase 1 ++
                "Went to mow a meadow\n"

verse :: Int -> String
verse n = case n of
              1 -> singularVerse
              _ -> numberToWord n ++ " men went to mow\n" ++
                   "Went to mow a meadow\n" ++
                   phrase n ++
                   "Went to mow a meadow\n"

songIterative :: Int -> String
songIterative n = intercalate "\n" $ map verse $ take n [1..]

songRecursive :: Int -> String
songRecursive n = case n of
                      0 -> ""
                      _ -> songRecursive (n - 1) ++ "\n" ++ verse n

song :: Int -> String
song = songIterative