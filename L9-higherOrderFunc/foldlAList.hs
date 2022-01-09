-- foldl :  a func | an init value | a list

main = do
  let res1 = foldl (+) 0 [1 .. 100] -- sum
      res2 = foldl (*) 1 [1 .. 3] -- product
  print (res1, res2)

-- (5050,6)
