module Chapter02.ExerciseH (addSum, valid, addSum', valid') where

type CIN = String

readCIN :: CIN -> Int
readCIN = read

checkSum :: Int -> Int
checkSum x | x == 0    = 0
           | otherwise = mod x 10 + checkSum (div x 10)

addSum :: CIN -> CIN
addSum cin = cin ++ show (checkSum $ readCIN cin)

valid :: CIN -> Bool
valid cin = cin == (addSum $ take 8 cin)

-- Try using read with type annotations to avoid creating auxiliary functions
addSum' :: CIN -> CIN
addSum' cin = cin ++ show (checkSum' $ readCIN' cin)
    where checkSum' x | x == 0    = 0
                      | otherwise = mod x 10 + checkSum' (div x 10)
          readCIN' x = read x :: Int

valid' :: CIN -> Bool
valid' cin = cin == (addSum' $ take 8 cin)