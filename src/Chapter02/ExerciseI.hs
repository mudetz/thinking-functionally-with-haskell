module Chapter02.ExerciseI (palindrome) where

import Data.Char (isAlpha, toLower)

palindrome :: IO ()
palindrome = do
  putStrLn "Enter a string:"
  word <- getLine >>= pure . (map toLower) . (filter isAlpha)
  isPalindrome <- pure $ word == reverse word
  if isPalindrome
    then putStrLn "Yes!"
    else putStrLn "No"
  return ()
