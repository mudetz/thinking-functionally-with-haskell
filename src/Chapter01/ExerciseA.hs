module Chapter01.ExerciseA (double, main) where

double :: Integer -> Integer
double = (*) 2

main :: IO ()
main = do
    print $ map double [1, 4, 4, 3]
    -- [2, 8, 8, 6]
    
    print $ map (double . double) [1, 4, 4, 3]
    -- [4, 16, 16, 12]
    
    print $ map double []
    -- []
    
-- All assertions are true
