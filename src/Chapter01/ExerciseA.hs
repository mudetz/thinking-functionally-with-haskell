module Chapter01.ExerciseA where

double :: Integer -> Integer
double = (*) 2

map double [1, 4, 4, 3]
-- [2, 8, 8, 6]

map (double . double) [1, 4, 4, 3]
-- [4, 16, 16, 12]

map double []
-- []

-- All assertions are true
