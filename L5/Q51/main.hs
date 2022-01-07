-- Q5.1
inc n = n + 1

double n = n * 2

square n = n ^ 2

ifEven f x =
  if even x
    then f x
    else x

-- ----
ifEvenInc = ifEven inc

ifEvenDouble = ifEven double

ifEvenSquare = ifEven square

-- ----

main = do
  let incRes = ifEvenInc 6
      dbRes = ifEvenDouble 6
      sqRes = ifEvenSquare 6
      oddRes = ifEvenInc 3

  print [incRes, dbRes, sqRes, oddRes]

-- [7,12,36,3]
