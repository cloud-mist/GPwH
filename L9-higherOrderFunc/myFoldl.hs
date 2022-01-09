-- foldl

myFoldl f init [] = init
myFoldl f init (x : xs) = myFoldl f newInit xs
  where
    newInit = f init x

main = do
  let s = [1 .. 100]
      res = myFoldl (+) 0 s
  print res

-- 5050
