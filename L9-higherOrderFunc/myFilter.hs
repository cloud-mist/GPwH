-- Filter

myFilter test [] = []
myFilter test (x : xs) =
  if test x
    then x : myFilter test xs
    else myFilter test xs

main = do
  let s = [1 .. 10]
      res = myFilter even s

  print res

-- [2,4,6,8,10]
