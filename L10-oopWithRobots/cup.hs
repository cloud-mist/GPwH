-- creat a constructor
cup flOz = \msg -> msg flOz

-- make instance
coffeeCup = cup 12

-- get value
getOz aCup = aCup (\flOz -> flOz)

-- drink message that updates state
drink aCup ozDrank =
  if ozDiff >= 0
    then cup ozDiff
    else cup 0
  where
    flOz = getOz aCup
    ozDiff = flOz - ozDrank

--  isEmpty
isEmpty aCup = getOz aCup == 0

afterManySips = foldl drink coffeeCup [1, 1, 1, 1]

main = do
  let res = getOz afterManySips
  print res

-- 8
