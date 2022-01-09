-- reverse

rcons x y = y : x

myReverse xs = foldl rcons [] xs

main = do
  let s = [1 .. 10]
      res = myReverse s
  print res

-- [10,9,8,7,6,5,4,3,2,1]
