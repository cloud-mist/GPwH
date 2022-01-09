-- 1/1 + 1/2 + 1/3 + 1/4 ...

f n = sum $ map (1 /) [1 .. n]

main = do
  let res = f 3
  print res
