module Chapter02.ExerciseE (head') where

head' :: [a] -> Maybe a
head' xs = case xs of
  (y:_) -> Just y
  _ -> Nothing
