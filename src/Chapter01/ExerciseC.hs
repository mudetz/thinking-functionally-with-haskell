module Chapter01.ExerciseC (main) where

main :: IO ()
main = do
    _ <- print (([1,2,3] ++ [3,2,1]) :: [Int])
    -- [1,2,3,3,2,1]
    
    _ <- print $ "Hello" ++ " World!"
    -- "Hello World!"
    
    _ <- print (([1,2,3] ++ []) :: [Int])
    -- [1,2,3]
    
    _ <- print $ "Hello" ++ " " ++ "World!"
    -- "Hello World!"
    
    return ()