-- remove elem that pass the test

myRemove test [] = []
myRemove test (x : xs) =
  if test x
    then myRemove test xs
    else x : myRemove test xs

main = do
  let s = [1 .. 10]
      res = myRemove (> 5) s

  print res

-- [1,2,3,4,5]
