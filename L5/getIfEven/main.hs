inc n = n + 1

ifEven myFunc x =
  if even x
    then myFunc x
    else x

getIfEven f = (\x -> ifEven f x)

ifEvenInc = getIfEven inc

main = do
  let res = ifEvenInc 10
  print res -- => 11
