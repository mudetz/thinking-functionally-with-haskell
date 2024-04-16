module Chapter02.ExerciseG (showDate) where
  
type Date = (Int, Int, Int)

showDate :: Date -> String
showDate (day, month, year) = show day ++ daySuffix ++ " " ++ monthStr ++ ", " ++ show year
    where daySuffix | day /= 11 && mod day 10 == 1 = "st"
                    | day /= 12 && mod day 10 == 2 = "nd"
                    | day /= 13 && mod day 10 == 3 = "rd"
                    | otherwise                    = "th"
          monthStr = [ "January"
                     , "February"
                     , "March"
                     , "April"
                     , "June"
                     , "July"
                     , "August"
                     , "September"
                     , "November"
                     , "December"
                     ] !! (month - 1)