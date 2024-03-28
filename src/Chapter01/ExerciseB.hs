module Chapter01.ExerciseB (main) where

-- Note that sin (π / 3) = √3 / 2
-- From which it is derived that sin² (π / 3) = (√3 / 2)² = 3 / 4 = 0.75

-- sin^2 theta does not make sense, a function cannot be squared
-- That expression should fail
--
-- sin^2 (pi / 3)
-- <interactive>:10:5: error: [GHC-39999]
   --    • Could not deduce ‘Num (Double -> Integer)’
   --        arising from the literal ‘2’
   --      from the context: (Floating a, Num (a -> a))
   --        bound by the inferred type of
   --                   it :: (Floating a, Num (a -> a)) => a -> a
   --        at <interactive>:10:1-14
   --        (maybe you haven't applied a function to enough arguments?)
   --    • In the second argument of ‘(^)’, namely ‘2 (pi / 3)’
   --      In the expression: sin ^ 2 (pi / 3)
   --      In an equation for ‘it’: it = sin ^ 2 (pi / 3)

main :: IO ()
main = do
    -- sin theta^2 is sin² theta, as function application takes precedence
    _ <- print ((sin (pi / 3.0)**2)::Double)
    -- 0.7499999999999999

    -- (sin theta)^2 is sin² theta, here the parenthesis do not change precedence of application
    _ <- print (((sin (pi / 3.0))**2.0)::Double)
    -- 0.7499999999999999

    return ()
