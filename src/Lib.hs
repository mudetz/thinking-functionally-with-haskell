module Lib
    ( someFunc
    ) where


maybeFunc :: Int -> IO (Maybe Int)
maybeFunc n = if n == 0 then return (Nothing) else return (Just n)

someFunc :: IO ()
someFunc = do
    x <- maybeFunc 1
    putStrLn $ show x
