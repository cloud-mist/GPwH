-- 每个都有特殊要求

-- L
sfOffice name =
  if lastName < "L"
    then
      nameText
        ++ " - PO Box 1234 - San Francisco, CA, 94111"
    else
      nameText
        ++ " - PO Box 1010 - San Francisco, CA, 94109"
  where
    lastName = snd name
    nameText = fst name ++ " " ++ snd name

-- use colon
nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
  where
    nameText = fst name ++ " " ++ snd name

-- only last name
renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where
    nameText = snd name

-- CASE expression
getLocationFunc location = case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> fst name ++ " " ++ snd name)

-- addressLetter
addressLetter name location = locationFunc name
  where
    locationFunc = getLocationFunc location

-- main
main = do
  let res1 = addressLetter ("Bob", "Smith") "ny"
  print res1

  let res2 = addressLetter ("Bob", "Jones") "ny"
  print res2

  let res3 = addressLetter ("Samantha", "Smith") "sf"
  print res3

  let res4 = addressLetter ("Bob", "Smith") "reno"
  print res4

-- ============= Res ============
-- "Bob Smith: PO Box 789 - New York, NY, 10013"
-- "Bob Jones: PO Box 789 - New York, NY, 10013"
-- "Samantha Smith - PO Box 1010 - San Francisco, CA, 94109"
-- "Smith - PO Box 456 - Reno, NV 89523"

