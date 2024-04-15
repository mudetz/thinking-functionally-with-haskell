module Chapter02.ExerciseF (exp', exp'') where

exp' :: Integer -> Integer -> Integer
exp' x n | n == 0   = 1
        | n == 1    = x
        | otherwise = x * exp' x (n - 1)

exp'' :: Integer -> Integer -> Integer
exp'' x n | n == 0    = 1
          | n == 1    = x
          | even n    = let r = exp'' x (div n 2) in r * r
          | otherwise = x * exp'' x (n - 1)