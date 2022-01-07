-- recursion
myGCD a b =
  if remainder == 0
    then b
    else myGCD b remainder
  where
    remainder = a `mod` b

main = do
  let res = myGCD 10 15
  print res

-- 5
