module Chapter02.ExerciseD (lazySusan, eagerBeaver) where

-- Lazy Suzan
-- Evaluation occurs as needed, so f should be evaluated only once
-- Proof:
lazySusan :: IO ()
lazySusan = do
  xs <- return $ map (trace ((+) 100)) [1..10]
  h <- pure $ case xs of
    [] -> return 0
    (x:_) -> x
  h >>= (putStrLn . show)
-- Note: wholy f** it was difficult understanding how to deal with a Monad to trace


-- Eager Beaver
-- Evaluation is eager, so f is applied to all n elements before letting head pop the 1st element
-- Proof:
eagerBeaver :: IO ()
eagerBeaver = do
  xs <- map' ((+) 100) [1..10]
  h <- pure $ case xs of
    [] -> 0
    (x:_) -> x
  putStrLn $ show h
-- Note: wholy f** this was even more difficult
-- TODO: can this be done with only `trace` and `Control.DeepSeq.force`??

-- Utility: print the evatuation of a function
trace :: (Int -> Int) -> Int -> IO (Int)
trace f x = do
  putStrLn $ "Evaluating f(" ++ show x ++ ") = " ++ show (f x)
  return $ f x

-- Utility: Eagerly map a function over a list
-- Print evaluation of f on every step
map' :: (Int -> Int) -> [Int] -> IO ([Int])
map' _ [] = return $ []
map' f (x:xs) = do
  z <- pure $ f x
  putStrLn $ "Evaluating f(" ++ show x ++ ") = " ++ show z
  zs <- z `seq` map' f xs
  return $ z : zs