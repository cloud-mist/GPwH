myElem val myList = length myFilterList /= 0
  where
    myFilterList = filter (== val) myList

main = do
  let s = [1 .. 10]
      res1 = myElem 5 s
      res2 = myElem 11 s
  print (res1, res2)

-- (True,False)
