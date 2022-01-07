myHead (x : xs) = x
myHead [] = error "No head for empty list"

main = do
  let res1 = myHead [1, 2, 3]
  print res1
