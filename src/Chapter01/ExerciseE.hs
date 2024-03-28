module Chapter01.ExerciseE where

-- Subtraction and division are examples of non-asociative operators

additiveIdentity :: Integer
additiveIdentity = 0

concatenationIdentity :: String
concatenationIdentity = ""

functionalCompositionIdentity :: a -> a
functionalCompositionIdentity x = x
-- NOTE: The function "id" satisfies this property